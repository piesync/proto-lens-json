{-# LANGUAGE GADTs #-}
{-# LANGUAGE OverloadedStrings #-}

module Data.ProtoLens.JSON.Encode (encodeMessageJSON) where

import qualified Data.Aeson as Aeson
import qualified Data.Aeson.Encoding as AE
import qualified Data.ByteString.Base64 as B64
import qualified Data.ByteString.Builder as B
import qualified Data.ByteString.Lazy as LBS
import qualified Data.Map as Map
import qualified Data.ProtoLens as P
import qualified Data.Text as Text
import Lens.Family2 ((^.), (.~), (&))

import Data.ProtoLens.JSON.Util (camelize, keyValueFieldDescriptors)

encodeMessageJSON :: P.Message msg => msg -> LBS.ByteString
encodeMessageJSON = AE.encodingToLazyByteString . messageToEncoding

messageToEncoding :: P.Message msg => msg -> Aeson.Encoding
messageToEncoding msg =
  AE.pairs $ foldMap fld P.fieldsByTag
  where fld v = maybe mempty
                  (AE.pairStr $ camelize $ P.fieldDescriptorName v)
                  (fieldToEncoding msg v)

fieldToEncoding :: msg -> P.FieldDescriptor msg -> Maybe Aeson.Encoding
fieldToEncoding msg (P.FieldDescriptor _ typeDescr accessor) =
  case accessor of
    P.PlainField _ f    -> return $ fieldValueToEncoding typeDescr (msg ^. f)
    P.OptionalField f   -> fieldValueToEncoding typeDescr <$> (msg ^.f)
    P.RepeatedField _ f -> return $ AE.list (fieldValueToEncoding typeDescr) (msg ^. f)
    P.MapField k v f    ->
      return $ AE.pairs $ Map.foldMapWithKey fld (msg ^. f)
      where fld key val = maybe mempty
                            (AE.pair' $ keyFieldToEncoding (P.defMessage & k .~ key) keyFd) $
                            fieldToEncoding (P.defMessage & v .~ val) valFd
            (keyFd, valFd) = keyValueFieldDescriptors

keyFieldToEncoding :: msg -> P.FieldDescriptor msg -> AE.Encoding' Aeson.Key
keyFieldToEncoding msg (P.FieldDescriptor _ typeDescr accessor) =
  case accessor of
    P.PlainField _ f  -> keyValueToEncoding typeDescr (msg ^. f)
    P.OptionalField f -> maybe (AE.text Text.empty) (keyValueToEncoding typeDescr) (msg ^. f)
    _ -> error "[BUG] unsupported field for map entry"

fieldValueToEncoding :: P.FieldTypeDescriptor value -> value -> Aeson.Encoding
fieldValueToEncoding (P.MessageField _) = messageToEncoding
fieldValueToEncoding (P.ScalarField P.EnumField) = AE.string . P.showEnum
fieldValueToEncoding (P.ScalarField P.Int32Field) = AE.int32
fieldValueToEncoding (P.ScalarField P.Int64Field) = AE.int64Text
fieldValueToEncoding (P.ScalarField P.UInt32Field) = AE.word32
fieldValueToEncoding (P.ScalarField P.UInt64Field) = AE.word64Text
fieldValueToEncoding (P.ScalarField P.SInt32Field) = AE.int32
fieldValueToEncoding (P.ScalarField P.SInt64Field) = AE.int64Text
fieldValueToEncoding (P.ScalarField P.Fixed32Field) = AE.word32
fieldValueToEncoding (P.ScalarField P.Fixed64Field) = AE.word64Text
fieldValueToEncoding (P.ScalarField P.SFixed32Field) = AE.int32
fieldValueToEncoding (P.ScalarField P.SFixed64Field) = AE.int64Text
fieldValueToEncoding (P.ScalarField P.FloatField) = realFloatToEncoding AE.float
fieldValueToEncoding (P.ScalarField P.DoubleField) = realFloatToEncoding AE.double
fieldValueToEncoding (P.ScalarField P.BoolField) = AE.bool
fieldValueToEncoding (P.ScalarField P.StringField) = AE.text
fieldValueToEncoding (P.ScalarField P.BytesField) = AE.unsafeToEncoding . quote . B.byteString . B64.encode
  where quote b = B.char8 '"' <> b <> B.char8 '"'

realFloatToEncoding :: RealFloat a => (a -> AE.Encoding) -> a -> AE.Encoding
realFloatToEncoding e d
  | isNaN d      = AE.text "NaN"
  | isInfinite d = AE.text $ if d > 0 then "Infinity" else "-Infinity"
  | otherwise    = e d

keyValueToEncoding :: P.FieldTypeDescriptor value -> value -> AE.Encoding' Aeson.Key
keyValueToEncoding (P.ScalarField P.Int32Field) = AE.int32Text
keyValueToEncoding (P.ScalarField P.Int64Field) = AE.int64Text
keyValueToEncoding (P.ScalarField P.UInt32Field) = AE.word32Text
keyValueToEncoding (P.ScalarField P.UInt64Field) = AE.word64Text
keyValueToEncoding (P.ScalarField P.SInt32Field) = AE.int32Text
keyValueToEncoding (P.ScalarField P.SInt64Field) = AE.int64Text
keyValueToEncoding (P.ScalarField P.Fixed32Field) = AE.word32Text
keyValueToEncoding (P.ScalarField P.Fixed64Field) = AE.word64Text
keyValueToEncoding (P.ScalarField P.SFixed32Field) = AE.int32Text
keyValueToEncoding (P.ScalarField P.SFixed64Field) = AE.int64Text
keyValueToEncoding (P.ScalarField P.BoolField) = \b -> AE.text $ if b then "true" else "false"
keyValueToEncoding (P.ScalarField P.StringField) = AE.text
keyValueToEncoding t = const $ error $ "[BUG] unsupported type for map key: " ++ show t
