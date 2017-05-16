{-# LANGUAGE GADTs #-}
{-# LANGUAGE OverloadedStrings #-}

module Data.ProtoLens.JSON (encodeMessageJSON) where

import Data.Char (toUpper)
import Data.Monoid ((<>))

import qualified Data.Aeson as Aeson
import qualified Data.Aeson.Encoding as AE
import qualified Data.ByteString.Base64 as B64
import qualified Data.ByteString.Builder as B
import qualified Data.ByteString.Lazy as LBS
import Data.Default.Class (def)
import qualified Data.Map as Map
import qualified Data.ProtoLens as P
import qualified Data.Text as Text
import Lens.Family2 ((^.), (.~), (&))

encodeMessageJSON :: P.Message msg => msg -> LBS.ByteString
encodeMessageJSON = AE.encodingToLazyByteString . messageToEncoding

messageToEncoding :: P.Message msg => msg -> Aeson.Encoding
messageToEncoding msg =
  AE.pairs $ Map.foldMapWithKey fld (P.fieldsByTextFormatName P.descriptor)
  where fld k v = maybe mempty (AE.pairStr $ camelize k) (fieldToEncoding msg v)

fieldToEncoding :: msg -> P.FieldDescriptor msg -> Maybe Aeson.Encoding
fieldToEncoding msg (P.FieldDescriptor _ typeDescr accessor) =
  case accessor of
    P.PlainField _ f    -> return $ fieldValueToEncoding typeDescr (msg ^. f)
    P.OptionalField f   -> fieldValueToEncoding typeDescr <$> (msg ^.f)
    P.RepeatedField _ f -> return $ AE.list (fieldValueToEncoding typeDescr) (msg ^. f)
    P.MapField k v f    ->
      return $ AE.pairs $ Map.foldMapWithKey fld (msg ^. f)
      where fld key val = maybe mempty
                            (AE.pair' $ keyFieldToEncoding (def & k .~ key) keyFd) $
                            fieldToEncoding (def & v .~ val) valFd
            [keyFd, valFd] = lookupDescOrDie accessor <$> [entryKeyTag, entryValueTag]

keyFieldToEncoding :: msg -> P.FieldDescriptor msg -> AE.Encoding' Text.Text
keyFieldToEncoding msg d@(P.FieldDescriptor _ typeDescr accessor) =
  case accessor of
    P.PlainField _ f  -> keyValueToEncoding typeDescr (msg ^. f)
    P.OptionalField f -> maybe (AE.text Text.empty) (keyValueToEncoding typeDescr) (msg ^. f)
    _ -> error "[BUG] unsupported field for map entry"

fieldValueToEncoding :: P.FieldTypeDescriptor value -> value -> Aeson.Encoding
fieldValueToEncoding P.MessageField = messageToEncoding
fieldValueToEncoding P.GroupField = undefined
fieldValueToEncoding P.EnumField = AE.string . P.showEnum
fieldValueToEncoding P.Int32Field = AE.int32
fieldValueToEncoding P.Int64Field = AE.int64Text
fieldValueToEncoding P.UInt32Field = AE.word32
fieldValueToEncoding P.UInt64Field = AE.word64Text
fieldValueToEncoding P.SInt32Field = AE.int32
fieldValueToEncoding P.SInt64Field = AE.int64Text
fieldValueToEncoding P.Fixed32Field = AE.word32
fieldValueToEncoding P.Fixed64Field = AE.word64Text
fieldValueToEncoding P.SFixed32Field = AE.int32
fieldValueToEncoding P.SFixed64Field = AE.int64Text
fieldValueToEncoding P.FloatField = realFloatToEncoding AE.float
fieldValueToEncoding P.DoubleField = realFloatToEncoding AE.double
fieldValueToEncoding P.BoolField = AE.bool
fieldValueToEncoding P.StringField = AE.text
fieldValueToEncoding P.BytesField = AE.unsafeToEncoding . quote . B.byteString . B64.encode
                                      where quote b = B.char8 '"' <> b <> B.char8 '"'

realFloatToEncoding :: RealFloat a => (a -> AE.Encoding) -> a -> AE.Encoding
realFloatToEncoding e d
  | isNaN d      = AE.text "NaN"
  | isInfinite d = AE.text $ if d > 0 then "Infinity" else "-Infinity"
  | otherwise    = e d

keyValueToEncoding :: P.FieldTypeDescriptor value -> value -> AE.Encoding' Text.Text
keyValueToEncoding P.Int32Field = AE.int32Text
keyValueToEncoding P.Int64Field = AE.int64Text
keyValueToEncoding P.UInt32Field = AE.word32Text
keyValueToEncoding P.UInt64Field = AE.word64Text
keyValueToEncoding P.SInt32Field = AE.int32Text
keyValueToEncoding P.SInt64Field = AE.int64Text
keyValueToEncoding P.Fixed32Field = AE.word32Text
keyValueToEncoding P.Fixed64Field = AE.word64Text
keyValueToEncoding P.SFixed32Field = AE.int32Text
keyValueToEncoding P.SFixed64Field = AE.int64Text
keyValueToEncoding P.BoolField = \b -> AE.text $ if b then "true" else "false"
keyValueToEncoding P.StringField = AE.text
keyValueToEncoding t = const $ error $ "[BUG] unsupported type for map key: " ++ show t

lookupDescOrDie :: P.Message entry => P.FieldAccessor msg entry -> P.Tag -> P.FieldDescriptor entry
lookupDescOrDie _ t =
  maybe (error $ "[BUG] missing field in map entry: " ++ show t) id $
    Map.lookup t (P.fieldsByTag P.descriptor)

entryKeyTag, entryValueTag :: P.Tag
entryKeyTag = 1
entryValueTag = 2

camelize :: String -> String
camelize ('_':c:cs) = toUpper c:camelize cs
camelize (c:cs) = c:camelize cs
camelize [] = []
