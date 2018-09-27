{- This file was auto-generated from json_format_proto3.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies,
  UndecidableInstances, GeneralizedNewtypeDeriving,
  MultiParamTypeClasses, FlexibleContexts, FlexibleInstances,
  PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports#-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports#-}
module Proto.JsonFormatProto3_Fields where
import qualified Data.ProtoLens.Runtime.Prelude as Prelude
import qualified Data.ProtoLens.Runtime.Data.Int as Data.Int
import qualified Data.ProtoLens.Runtime.Data.Word as Data.Word
import qualified Data.ProtoLens.Runtime.Data.ProtoLens
       as Data.ProtoLens
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Message.Enum
       as Data.ProtoLens.Message.Enum
import qualified
       Data.ProtoLens.Runtime.Data.ProtoLens.Service.Types
       as Data.ProtoLens.Service.Types
import qualified Data.ProtoLens.Runtime.Lens.Family2
       as Lens.Family2
import qualified Data.ProtoLens.Runtime.Lens.Family2.Unchecked
       as Lens.Family2.Unchecked
import qualified Data.ProtoLens.Runtime.Data.Text as Data.Text
import qualified Data.ProtoLens.Runtime.Data.Map as Data.Map
import qualified Data.ProtoLens.Runtime.Data.ByteString
       as Data.ByteString
import qualified Data.ProtoLens.Runtime.Data.ByteString.Char8
       as Data.ByteString.Char8
import qualified Data.ProtoLens.Runtime.Lens.Labels as Lens.Labels
import qualified Data.ProtoLens.Runtime.Text.Read as Text.Read

boolMap ::
        forall f s a .
          (Prelude.Functor f, Lens.Labels.HasLens' s "boolMap" a) =>
          Lens.Family2.LensLike' f s a
boolMap
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "boolMap")
boolValue ::
          forall f s a .
            (Prelude.Functor f, Lens.Labels.HasLens' s "boolValue" a) =>
            Lens.Family2.LensLike' f s a
boolValue
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "boolValue")
bytesValue ::
           forall f s a .
             (Prelude.Functor f, Lens.Labels.HasLens' s "bytesValue" a) =>
             Lens.Family2.LensLike' f s a
bytesValue
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "bytesValue")
doubleValue ::
            forall f s a .
              (Prelude.Functor f, Lens.Labels.HasLens' s "doubleValue" a) =>
              Lens.Family2.LensLike' f s a
doubleValue
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "doubleValue")
enumValue ::
          forall f s a .
            (Prelude.Functor f, Lens.Labels.HasLens' s "enumValue" a) =>
            Lens.Family2.LensLike' f s a
enumValue
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "enumValue")
floatValue ::
           forall f s a .
             (Prelude.Functor f, Lens.Labels.HasLens' s "floatValue" a) =>
             Lens.Family2.LensLike' f s a
floatValue
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "floatValue")
int32Map ::
         forall f s a .
           (Prelude.Functor f, Lens.Labels.HasLens' s "int32Map" a) =>
           Lens.Family2.LensLike' f s a
int32Map
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "int32Map")
int32Value ::
           forall f s a .
             (Prelude.Functor f, Lens.Labels.HasLens' s "int32Value" a) =>
             Lens.Family2.LensLike' f s a
int32Value
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "int32Value")
int64Map ::
         forall f s a .
           (Prelude.Functor f, Lens.Labels.HasLens' s "int64Map" a) =>
           Lens.Family2.LensLike' f s a
int64Map
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "int64Map")
int64Value ::
           forall f s a .
             (Prelude.Functor f, Lens.Labels.HasLens' s "int64Value" a) =>
             Lens.Family2.LensLike' f s a
int64Value
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "int64Value")
key ::
    forall f s a .
      (Prelude.Functor f, Lens.Labels.HasLens' s "key" a) =>
      Lens.Family2.LensLike' f s a
key
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "key")
mapMap ::
       forall f s a .
         (Prelude.Functor f, Lens.Labels.HasLens' s "mapMap" a) =>
         Lens.Family2.LensLike' f s a
mapMap
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "mapMap")
maybe'messageValue ::
                   forall f s a .
                     (Prelude.Functor f,
                      Lens.Labels.HasLens' s "maybe'messageValue" a) =>
                     Lens.Family2.LensLike' f s a
maybe'messageValue
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'messageValue")
maybe'oneofBytesValue ::
                      forall f s a .
                        (Prelude.Functor f,
                         Lens.Labels.HasLens' s "maybe'oneofBytesValue" a) =>
                        Lens.Family2.LensLike' f s a
maybe'oneofBytesValue
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "maybe'oneofBytesValue")
maybe'oneofEnumValue ::
                     forall f s a .
                       (Prelude.Functor f,
                        Lens.Labels.HasLens' s "maybe'oneofEnumValue" a) =>
                       Lens.Family2.LensLike' f s a
maybe'oneofEnumValue
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "maybe'oneofEnumValue")
maybe'oneofInt32Value ::
                      forall f s a .
                        (Prelude.Functor f,
                         Lens.Labels.HasLens' s "maybe'oneofInt32Value" a) =>
                        Lens.Family2.LensLike' f s a
maybe'oneofInt32Value
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "maybe'oneofInt32Value")
maybe'oneofMessageValue ::
                        forall f s a .
                          (Prelude.Functor f,
                           Lens.Labels.HasLens' s "maybe'oneofMessageValue" a) =>
                          Lens.Family2.LensLike' f s a
maybe'oneofMessageValue
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "maybe'oneofMessageValue")
maybe'oneofStringValue ::
                       forall f s a .
                         (Prelude.Functor f,
                          Lens.Labels.HasLens' s "maybe'oneofStringValue" a) =>
                         Lens.Family2.LensLike' f s a
maybe'oneofStringValue
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "maybe'oneofStringValue")
maybe'oneofValue ::
                 forall f s a .
                   (Prelude.Functor f, Lens.Labels.HasLens' s "maybe'oneofValue" a) =>
                   Lens.Family2.LensLike' f s a
maybe'oneofValue
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'oneofValue")
maybe'value ::
            forall f s a .
              (Prelude.Functor f, Lens.Labels.HasLens' s "maybe'value" a) =>
              Lens.Family2.LensLike' f s a
maybe'value
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'value")
messageValue ::
             forall f s a .
               (Prelude.Functor f, Lens.Labels.HasLens' s "messageValue" a) =>
               Lens.Family2.LensLike' f s a
messageValue
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "messageValue")
oneofBytesValue ::
                forall f s a .
                  (Prelude.Functor f, Lens.Labels.HasLens' s "oneofBytesValue" a) =>
                  Lens.Family2.LensLike' f s a
oneofBytesValue
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "oneofBytesValue")
oneofEnumValue ::
               forall f s a .
                 (Prelude.Functor f, Lens.Labels.HasLens' s "oneofEnumValue" a) =>
                 Lens.Family2.LensLike' f s a
oneofEnumValue
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "oneofEnumValue")
oneofInt32Value ::
                forall f s a .
                  (Prelude.Functor f, Lens.Labels.HasLens' s "oneofInt32Value" a) =>
                  Lens.Family2.LensLike' f s a
oneofInt32Value
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "oneofInt32Value")
oneofMessageValue ::
                  forall f s a .
                    (Prelude.Functor f,
                     Lens.Labels.HasLens' s "oneofMessageValue" a) =>
                    Lens.Family2.LensLike' f s a
oneofMessageValue
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "oneofMessageValue")
oneofStringValue ::
                 forall f s a .
                   (Prelude.Functor f, Lens.Labels.HasLens' s "oneofStringValue" a) =>
                   Lens.Family2.LensLike' f s a
oneofStringValue
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "oneofStringValue")
repeatedBoolValue ::
                  forall f s a .
                    (Prelude.Functor f,
                     Lens.Labels.HasLens' s "repeatedBoolValue" a) =>
                    Lens.Family2.LensLike' f s a
repeatedBoolValue
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "repeatedBoolValue")
repeatedBytesValue ::
                   forall f s a .
                     (Prelude.Functor f,
                      Lens.Labels.HasLens' s "repeatedBytesValue" a) =>
                     Lens.Family2.LensLike' f s a
repeatedBytesValue
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "repeatedBytesValue")
repeatedDoubleValue ::
                    forall f s a .
                      (Prelude.Functor f,
                       Lens.Labels.HasLens' s "repeatedDoubleValue" a) =>
                      Lens.Family2.LensLike' f s a
repeatedDoubleValue
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "repeatedDoubleValue")
repeatedEnumValue ::
                  forall f s a .
                    (Prelude.Functor f,
                     Lens.Labels.HasLens' s "repeatedEnumValue" a) =>
                    Lens.Family2.LensLike' f s a
repeatedEnumValue
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "repeatedEnumValue")
repeatedFloatValue ::
                   forall f s a .
                     (Prelude.Functor f,
                      Lens.Labels.HasLens' s "repeatedFloatValue" a) =>
                     Lens.Family2.LensLike' f s a
repeatedFloatValue
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "repeatedFloatValue")
repeatedInt32Value ::
                   forall f s a .
                     (Prelude.Functor f,
                      Lens.Labels.HasLens' s "repeatedInt32Value" a) =>
                     Lens.Family2.LensLike' f s a
repeatedInt32Value
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "repeatedInt32Value")
repeatedInt64Value ::
                   forall f s a .
                     (Prelude.Functor f,
                      Lens.Labels.HasLens' s "repeatedInt64Value" a) =>
                     Lens.Family2.LensLike' f s a
repeatedInt64Value
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "repeatedInt64Value")
repeatedMessageValue ::
                     forall f s a .
                       (Prelude.Functor f,
                        Lens.Labels.HasLens' s "repeatedMessageValue" a) =>
                       Lens.Family2.LensLike' f s a
repeatedMessageValue
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "repeatedMessageValue")
repeatedStringValue ::
                    forall f s a .
                      (Prelude.Functor f,
                       Lens.Labels.HasLens' s "repeatedStringValue" a) =>
                      Lens.Family2.LensLike' f s a
repeatedStringValue
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "repeatedStringValue")
repeatedUint32Value ::
                    forall f s a .
                      (Prelude.Functor f,
                       Lens.Labels.HasLens' s "repeatedUint32Value" a) =>
                      Lens.Family2.LensLike' f s a
repeatedUint32Value
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "repeatedUint32Value")
repeatedUint64Value ::
                    forall f s a .
                      (Prelude.Functor f,
                       Lens.Labels.HasLens' s "repeatedUint64Value" a) =>
                      Lens.Family2.LensLike' f s a
repeatedUint64Value
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "repeatedUint64Value")
stringMap ::
          forall f s a .
            (Prelude.Functor f, Lens.Labels.HasLens' s "stringMap" a) =>
            Lens.Family2.LensLike' f s a
stringMap
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "stringMap")
stringValue ::
            forall f s a .
              (Prelude.Functor f, Lens.Labels.HasLens' s "stringValue" a) =>
              Lens.Family2.LensLike' f s a
stringValue
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "stringValue")
uint32Map ::
          forall f s a .
            (Prelude.Functor f, Lens.Labels.HasLens' s "uint32Map" a) =>
            Lens.Family2.LensLike' f s a
uint32Map
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "uint32Map")
uint32Value ::
            forall f s a .
              (Prelude.Functor f, Lens.Labels.HasLens' s "uint32Value" a) =>
              Lens.Family2.LensLike' f s a
uint32Value
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "uint32Value")
uint64Map ::
          forall f s a .
            (Prelude.Functor f, Lens.Labels.HasLens' s "uint64Map" a) =>
            Lens.Family2.LensLike' f s a
uint64Map
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "uint64Map")
uint64Value ::
            forall f s a .
              (Prelude.Functor f, Lens.Labels.HasLens' s "uint64Value" a) =>
              Lens.Family2.LensLike' f s a
uint64Value
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "uint64Value")
value ::
      forall f s a .
        (Prelude.Functor f, Lens.Labels.HasLens' s "value" a) =>
        Lens.Family2.LensLike' f s a
value
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "value")