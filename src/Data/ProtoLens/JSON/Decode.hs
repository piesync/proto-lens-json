{-# LANGUAGE GADTs #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE TypeApplications #-}

module Data.ProtoLens.JSON.Decode (ProtoJSON(..), decodeMessageJSON) where

import Control.Monad (foldM, forM, zipWithM)
import Data.Aeson ((<?>))
import Data.ProtoLens.Default (def)
import Data.Proxy (Proxy (Proxy))
import Data.Scientific (Scientific)
import Lens.Family2 (set, view)
import Data.Text (Text)

import qualified Data.Aeson as Aeson
import qualified Data.Aeson.Key as AK
import qualified Data.Aeson.KeyMap as AKM
import qualified Data.Aeson.Types as AT
import qualified Data.Attoparsec.ByteString.Char8 as A
import qualified Data.ByteString as BS
import qualified Data.ByteString.Base64 as B64
import qualified Data.ByteString.Lazy as LBS
import qualified Data.Map as Map
import qualified Data.ProtoLens as P
import qualified Data.Scientific as Scientific
import qualified Data.Text as Text
import qualified Data.Text.Encoding as Text.Encoding
import qualified Data.Vector as V

import Data.ProtoLens.JSON.Util (camelize, keyValueFieldDescriptors)

decodeMessageJSON :: P.Message msg => LBS.ByteString -> Either String msg
decodeMessageJSON s = unProtoJSON <$> Aeson.eitherDecode s

newtype ProtoJSON msg = ProtoJSON { unProtoJSON :: msg }

instance P.Message msg => Aeson.FromJSON (ProtoJSON msg) where
  parseJSON = fmap ProtoJSON . parseMessage

parseMessage :: forall msg. P.Message msg => Aeson.Value -> AT.Parser msg
parseMessage =
  Aeson.withObject (Text.unpack $ P.messageName $ Proxy @msg) $ \v ->
    foldM parseField P.defMessage (AKM.toList v)

parseField :: P.Message msg => msg -> (AK.Key, Aeson.Value) -> AT.Parser msg
parseField msg (key, value) =
  case Map.lookup key fieldsByName of
    Nothing ->
      fail $ "key " ++ show key ++ " is not defined in proto"
    Just descriptor ->
      parseFieldValue msg descriptor value <?> AT.Key key

parseFieldValue
  :: P.Message msg
  => msg
  -> P.FieldDescriptor msg
  -> Aeson.Value
  -> AT.Parser msg
parseFieldValue msg (P.FieldDescriptor _ typeDescriptor accessor) value = do
  case value of
    AT.Null -> return msg
    _ ->
      case accessor of
        P.PlainField _ f -> do
          parsed <- parseValue typeDescriptor value
          return $ set f parsed msg

        P.OptionalField f -> do
          parsed <- parseValue typeDescriptor value
          return $ set f (Just parsed) msg

        P.RepeatedField _ f -> do
          parsed <- Aeson.withArray "[]"
            (parseIndexed $ parseValue typeDescriptor) value
          return $ set f parsed msg

        P.MapField k v f -> do
          parsed <- Aeson.withObject "map" parseMap value
          return $ set f (Map.fromList parsed) msg

          where
            parseMap object = do
              forM (AKM.toList object) $ \(entryKey, entryVal) -> do
                parsedKeyEntry <- parseKeyField def keyDescriptor entryKey <?> AT.Key entryKey
                parsedValueEntry <- parseFieldValue def valueDescriptor entryVal
                return (view k parsedKeyEntry, view v parsedValueEntry)

            (keyDescriptor, valueDescriptor) = keyValueFieldDescriptors

parseKeyField
  :: P.Message msg
  => msg
  -> P.FieldDescriptor msg
  -> Aeson.Key
  -> AT.Parser msg
parseKeyField msg (P.FieldDescriptor _ typeDescriptor accessor) key = do
  case accessor of
    P.PlainField _ f -> do
      parsed <- parseKeyValue typeDescriptor key
      return $ set f parsed msg

    P.OptionalField f -> do
      parsed <- parseKeyValue typeDescriptor key
      return $ set f (Just parsed) msg

    _ -> fail "[BUG] unsupported field type for map entry"

fieldsByName :: P.Message msg => Map.Map AK.Key (P.FieldDescriptor msg)
fieldsByName =
  Map.fromList
    [(AK.fromString key, descriptor)
    | descriptor <- P.allFields
    , let name = P.fieldDescriptorName descriptor
    , key <- [name, camelize name]
    ]

parseValue :: P.FieldTypeDescriptor value -> Aeson.Value -> AT.Parser value
parseValue typeDescr value =
  case typeDescr of
    P.MessageField _ -> parseMessage value
    P.ScalarField scalar -> parseScalarValue scalar value

parseScalarValue :: P.ScalarField value -> Aeson.Value -> AT.Parser value
parseScalarValue typeDescr =
  case typeDescr of
    P.EnumField -> parseEnum
    P.Int32Field -> parseBoundedIntegral
    P.Int64Field -> parseBoundedIntegral
    P.UInt32Field -> parseBoundedIntegral
    P.UInt64Field -> parseBoundedIntegral
    P.SInt32Field -> parseBoundedIntegral
    P.SInt64Field -> parseBoundedIntegral
    P.Fixed32Field -> parseBoundedIntegral
    P.Fixed64Field -> parseBoundedIntegral
    P.SFixed32Field -> parseBoundedIntegral
    P.SFixed64Field -> parseBoundedIntegral
    P.FloatField -> parseRealFloat
    P.DoubleField -> parseRealFloat
    P.BoolField -> parseBool
    P.StringField -> parseText
    P.BytesField -> parseByteString

parseKeyValue :: P.FieldTypeDescriptor value -> Aeson.Key -> AT.Parser value
parseKeyValue typeDescr key =
  case typeDescr of
    P.MessageField _ -> fail "[BUG] unsupported type for map key: message"
    P.ScalarField scalar -> parseScalarKeyValue scalar (AK.toText key)

parseScalarKeyValue :: P.ScalarField value -> Text -> AT.Parser value
parseScalarKeyValue typeDescr =
  case typeDescr of
    P.Int32Field -> parseBoundedIntegralKey
    P.Int64Field -> parseBoundedIntegralKey
    P.UInt32Field -> parseBoundedIntegralKey
    P.UInt64Field -> parseBoundedIntegralKey
    P.SInt32Field -> parseBoundedIntegralKey
    P.SInt64Field -> parseBoundedIntegralKey
    P.Fixed32Field -> parseBoundedIntegralKey
    P.Fixed64Field -> parseBoundedIntegralKey
    P.SFixed32Field -> parseBoundedIntegralKey
    P.SFixed64Field -> parseBoundedIntegralKey
    P.BoolField -> parseBoolKey
    P.StringField -> return
    -- From https://protobuf.dev/programming-guides/proto3/#maps
    -- > …where the key_type can be any integral or string type (so, any scalar type except for floating point types and bytes). Note that neither enum nor proto messages are valid for key_type.
    P.EnumField -> const $ fail "[BUG] unsupported type for map key: enum"
    P.FloatField -> const $ fail "[BUG] unsupported type for map key: float"
    P.DoubleField -> const $ fail "[BUG] unsupported type for map key: double"
    P.BytesField -> const $ fail "[BUG] unsupported type for map key: bytes"

parseIndexed :: (Aeson.Value -> AT.Parser value) -> Aeson.Array -> AT.Parser [value]
parseIndexed parser =
  zipWithM (Aeson.parseIndexedJSON parser) [0..] . V.toList

parseEnum :: P.MessageEnum a => Aeson.Value -> AT.Parser a
parseEnum value =
  case value of
    AT.String v -> do
      let str = Text.unpack v
      maybe (fail ("undefined enum value: " ++ str)) return $ P.readEnum str
    AT.Number v -> do
      tag <- parseBoundedIntegralFromScientific v
      maybe
        (fail "undefined enum tag (this shouldn't fail)")
        return
        (P.maybeToEnum tag)
    _ -> AT.typeMismatch "String or Number" value

parseBoundedIntegral :: (Bounded a, Integral a) => Aeson.Value -> AT.Parser a
parseBoundedIntegral value =
  case value of
    AT.String v -> parseScientificText v >>= parseBoundedIntegralFromScientific
    AT.Number v -> parseBoundedIntegralFromScientific v
    _ -> AT.typeMismatch "String or Number" value

parseBoundedIntegralKey :: (Bounded a, Integral a) => Text -> AT.Parser a
parseBoundedIntegralKey key =
  parseScientificText key >>= parseBoundedIntegralFromScientific

parseBoundedIntegralFromScientific :: (Bounded a, Integral a) => Scientific -> AT.Parser a
parseBoundedIntegralFromScientific s = maybe
  (fail $ "value is either floating or will cause over or underflow " ++ show s)
  pure
  (Scientific.toBoundedInteger s)

parseScientificText :: Text -> AT.Parser Scientific
parseScientificText = either fail pure
  . A.parseOnly (A.scientific <* A.endOfInput)
  . Text.Encoding.encodeUtf8

parseRealFloat :: RealFloat a => Aeson.Value -> AT.Parser a
parseRealFloat value =
  case value of
    AT.String "Infinity" -> return (1/0)
    AT.String "-Infinity" -> return $ negate 1/0
    AT.String "NaN" -> return (0/0)
    AT.String v -> Scientific.toRealFloat <$> parseScientificText v
    AT.Number v -> return $ Scientific.toRealFloat v
    _ -> AT.typeMismatch "String or Number" value

parseBool :: Aeson.Value -> AT.Parser Bool
parseBool value =
  case value of
    AT.Bool v -> return v
    _ -> AT.typeMismatch "Bool" value

parseBoolKey :: Text -> AT.Parser Bool
parseBoolKey key =
  case key of
    "true" -> return True
    "false" -> return False
    _ -> fail "cannot read bool from map key"

parseText :: Aeson.Value -> AT.Parser Text
parseText value =
  case value of
    AT.String v -> return v
    _ -> AT.typeMismatch "String" value

parseByteString :: Aeson.Value -> AT.Parser BS.ByteString
parseByteString value = do
  t <- parseText value
  either fail return $ B64.decode $ Text.Encoding.encodeUtf8 t
