{- This file was auto-generated from json_format_proto3.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies,
  UndecidableInstances, GeneralizedNewtypeDeriving,
  MultiParamTypeClasses, FlexibleContexts, FlexibleInstances,
  PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports#-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports#-}
module Proto.JsonFormatProto3_Fields where
import qualified Data.ProtoLens.Reexport.Prelude as Prelude
import qualified Data.ProtoLens.Reexport.Data.Int as Data.Int
import qualified Data.ProtoLens.Reexport.Data.Word as Data.Word
import qualified Data.ProtoLens.Reexport.Data.ProtoLens
       as Data.ProtoLens
import qualified
       Data.ProtoLens.Reexport.Data.ProtoLens.Message.Enum
       as Data.ProtoLens.Message.Enum
import qualified
       Data.ProtoLens.Reexport.Data.ProtoLens.Service.Types
       as Data.ProtoLens.Service.Types
import qualified Data.ProtoLens.Reexport.Lens.Family2
       as Lens.Family2
import qualified Data.ProtoLens.Reexport.Lens.Family2.Unchecked
       as Lens.Family2.Unchecked
import qualified Data.ProtoLens.Reexport.Data.Default.Class
       as Data.Default.Class
import qualified Data.ProtoLens.Reexport.Data.Text as Data.Text
import qualified Data.ProtoLens.Reexport.Data.Map as Data.Map
import qualified Data.ProtoLens.Reexport.Data.ByteString
       as Data.ByteString
import qualified Data.ProtoLens.Reexport.Data.ByteString.Char8
       as Data.ByteString.Char8
import qualified Data.ProtoLens.Reexport.Lens.Labels as Lens.Labels
import qualified Data.ProtoLens.Reexport.Text.Read as Text.Read

boolMap ::
        forall f s t a b . (Lens.Labels.HasLens f s t "boolMap" a b) =>
          Lens.Family2.LensLike f s t a b
boolMap
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "boolMap")
boolValue ::
          forall f s t a b . (Lens.Labels.HasLens f s t "boolValue" a b) =>
            Lens.Family2.LensLike f s t a b
boolValue
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "boolValue")
bytesValue ::
           forall f s t a b . (Lens.Labels.HasLens f s t "bytesValue" a b) =>
             Lens.Family2.LensLike f s t a b
bytesValue
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "bytesValue")
doubleValue ::
            forall f s t a b . (Lens.Labels.HasLens f s t "doubleValue" a b) =>
              Lens.Family2.LensLike f s t a b
doubleValue
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "doubleValue")
enumValue ::
          forall f s t a b . (Lens.Labels.HasLens f s t "enumValue" a b) =>
            Lens.Family2.LensLike f s t a b
enumValue
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "enumValue")
floatValue ::
           forall f s t a b . (Lens.Labels.HasLens f s t "floatValue" a b) =>
             Lens.Family2.LensLike f s t a b
floatValue
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "floatValue")
int32Map ::
         forall f s t a b . (Lens.Labels.HasLens f s t "int32Map" a b) =>
           Lens.Family2.LensLike f s t a b
int32Map
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "int32Map")
int32Value ::
           forall f s t a b . (Lens.Labels.HasLens f s t "int32Value" a b) =>
             Lens.Family2.LensLike f s t a b
int32Value
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "int32Value")
int64Map ::
         forall f s t a b . (Lens.Labels.HasLens f s t "int64Map" a b) =>
           Lens.Family2.LensLike f s t a b
int64Map
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "int64Map")
int64Value ::
           forall f s t a b . (Lens.Labels.HasLens f s t "int64Value" a b) =>
             Lens.Family2.LensLike f s t a b
int64Value
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "int64Value")
key ::
    forall f s t a b . (Lens.Labels.HasLens f s t "key" a b) =>
      Lens.Family2.LensLike f s t a b
key
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "key")
mapMap ::
       forall f s t a b . (Lens.Labels.HasLens f s t "mapMap" a b) =>
         Lens.Family2.LensLike f s t a b
mapMap
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "mapMap")
maybe'messageValue ::
                   forall f s t a b .
                     (Lens.Labels.HasLens f s t "maybe'messageValue" a b) =>
                     Lens.Family2.LensLike f s t a b
maybe'messageValue
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'messageValue")
maybe'oneofBytesValue ::
                      forall f s t a b .
                        (Lens.Labels.HasLens f s t "maybe'oneofBytesValue" a b) =>
                        Lens.Family2.LensLike f s t a b
maybe'oneofBytesValue
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "maybe'oneofBytesValue")
maybe'oneofEnumValue ::
                     forall f s t a b .
                       (Lens.Labels.HasLens f s t "maybe'oneofEnumValue" a b) =>
                       Lens.Family2.LensLike f s t a b
maybe'oneofEnumValue
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "maybe'oneofEnumValue")
maybe'oneofInt32Value ::
                      forall f s t a b .
                        (Lens.Labels.HasLens f s t "maybe'oneofInt32Value" a b) =>
                        Lens.Family2.LensLike f s t a b
maybe'oneofInt32Value
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "maybe'oneofInt32Value")
maybe'oneofMessageValue ::
                        forall f s t a b .
                          (Lens.Labels.HasLens f s t "maybe'oneofMessageValue" a b) =>
                          Lens.Family2.LensLike f s t a b
maybe'oneofMessageValue
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "maybe'oneofMessageValue")
maybe'oneofStringValue ::
                       forall f s t a b .
                         (Lens.Labels.HasLens f s t "maybe'oneofStringValue" a b) =>
                         Lens.Family2.LensLike f s t a b
maybe'oneofStringValue
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "maybe'oneofStringValue")
maybe'oneofValue ::
                 forall f s t a b .
                   (Lens.Labels.HasLens f s t "maybe'oneofValue" a b) =>
                   Lens.Family2.LensLike f s t a b
maybe'oneofValue
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'oneofValue")
maybe'value ::
            forall f s t a b . (Lens.Labels.HasLens f s t "maybe'value" a b) =>
              Lens.Family2.LensLike f s t a b
maybe'value
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'value")
messageValue ::
             forall f s t a b .
               (Lens.Labels.HasLens f s t "messageValue" a b) =>
               Lens.Family2.LensLike f s t a b
messageValue
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "messageValue")
oneofBytesValue ::
                forall f s t a b .
                  (Lens.Labels.HasLens f s t "oneofBytesValue" a b) =>
                  Lens.Family2.LensLike f s t a b
oneofBytesValue
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "oneofBytesValue")
oneofEnumValue ::
               forall f s t a b .
                 (Lens.Labels.HasLens f s t "oneofEnumValue" a b) =>
                 Lens.Family2.LensLike f s t a b
oneofEnumValue
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "oneofEnumValue")
oneofInt32Value ::
                forall f s t a b .
                  (Lens.Labels.HasLens f s t "oneofInt32Value" a b) =>
                  Lens.Family2.LensLike f s t a b
oneofInt32Value
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "oneofInt32Value")
oneofMessageValue ::
                  forall f s t a b .
                    (Lens.Labels.HasLens f s t "oneofMessageValue" a b) =>
                    Lens.Family2.LensLike f s t a b
oneofMessageValue
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "oneofMessageValue")
oneofStringValue ::
                 forall f s t a b .
                   (Lens.Labels.HasLens f s t "oneofStringValue" a b) =>
                   Lens.Family2.LensLike f s t a b
oneofStringValue
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "oneofStringValue")
repeatedBoolValue ::
                  forall f s t a b .
                    (Lens.Labels.HasLens f s t "repeatedBoolValue" a b) =>
                    Lens.Family2.LensLike f s t a b
repeatedBoolValue
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "repeatedBoolValue")
repeatedBytesValue ::
                   forall f s t a b .
                     (Lens.Labels.HasLens f s t "repeatedBytesValue" a b) =>
                     Lens.Family2.LensLike f s t a b
repeatedBytesValue
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "repeatedBytesValue")
repeatedDoubleValue ::
                    forall f s t a b .
                      (Lens.Labels.HasLens f s t "repeatedDoubleValue" a b) =>
                      Lens.Family2.LensLike f s t a b
repeatedDoubleValue
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "repeatedDoubleValue")
repeatedEnumValue ::
                  forall f s t a b .
                    (Lens.Labels.HasLens f s t "repeatedEnumValue" a b) =>
                    Lens.Family2.LensLike f s t a b
repeatedEnumValue
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "repeatedEnumValue")
repeatedFloatValue ::
                   forall f s t a b .
                     (Lens.Labels.HasLens f s t "repeatedFloatValue" a b) =>
                     Lens.Family2.LensLike f s t a b
repeatedFloatValue
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "repeatedFloatValue")
repeatedInt32Value ::
                   forall f s t a b .
                     (Lens.Labels.HasLens f s t "repeatedInt32Value" a b) =>
                     Lens.Family2.LensLike f s t a b
repeatedInt32Value
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "repeatedInt32Value")
repeatedInt64Value ::
                   forall f s t a b .
                     (Lens.Labels.HasLens f s t "repeatedInt64Value" a b) =>
                     Lens.Family2.LensLike f s t a b
repeatedInt64Value
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "repeatedInt64Value")
repeatedMessageValue ::
                     forall f s t a b .
                       (Lens.Labels.HasLens f s t "repeatedMessageValue" a b) =>
                       Lens.Family2.LensLike f s t a b
repeatedMessageValue
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "repeatedMessageValue")
repeatedStringValue ::
                    forall f s t a b .
                      (Lens.Labels.HasLens f s t "repeatedStringValue" a b) =>
                      Lens.Family2.LensLike f s t a b
repeatedStringValue
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "repeatedStringValue")
repeatedUint32Value ::
                    forall f s t a b .
                      (Lens.Labels.HasLens f s t "repeatedUint32Value" a b) =>
                      Lens.Family2.LensLike f s t a b
repeatedUint32Value
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "repeatedUint32Value")
repeatedUint64Value ::
                    forall f s t a b .
                      (Lens.Labels.HasLens f s t "repeatedUint64Value" a b) =>
                      Lens.Family2.LensLike f s t a b
repeatedUint64Value
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "repeatedUint64Value")
stringMap ::
          forall f s t a b . (Lens.Labels.HasLens f s t "stringMap" a b) =>
            Lens.Family2.LensLike f s t a b
stringMap
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "stringMap")
stringValue ::
            forall f s t a b . (Lens.Labels.HasLens f s t "stringValue" a b) =>
              Lens.Family2.LensLike f s t a b
stringValue
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "stringValue")
uint32Map ::
          forall f s t a b . (Lens.Labels.HasLens f s t "uint32Map" a b) =>
            Lens.Family2.LensLike f s t a b
uint32Map
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "uint32Map")
uint32Value ::
            forall f s t a b . (Lens.Labels.HasLens f s t "uint32Value" a b) =>
              Lens.Family2.LensLike f s t a b
uint32Value
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "uint32Value")
uint64Map ::
          forall f s t a b . (Lens.Labels.HasLens f s t "uint64Map" a b) =>
            Lens.Family2.LensLike f s t a b
uint64Map
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "uint64Map")
uint64Value ::
            forall f s t a b . (Lens.Labels.HasLens f s t "uint64Value" a b) =>
              Lens.Family2.LensLike f s t a b
uint64Value
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "uint64Value")
value ::
      forall f s t a b . (Lens.Labels.HasLens f s t "value" a b) =>
        Lens.Family2.LensLike f s t a b
value
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "value")