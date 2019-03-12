{- This file was auto-generated from json_format_proto3.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies,
  UndecidableInstances, GeneralizedNewtypeDeriving,
  MultiParamTypeClasses, FlexibleContexts, FlexibleInstances,
  PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds,
  BangPatterns, TypeApplications #-}
{-# OPTIONS_GHC -fno-warn-unused-imports#-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports#-}
module Proto.JsonFormatProto3_Fields where
import qualified Data.ProtoLens.Runtime.Prelude as Prelude
import qualified Data.ProtoLens.Runtime.Data.Int as Data.Int
import qualified Data.ProtoLens.Runtime.Data.Monoid as Data.Monoid
import qualified Data.ProtoLens.Runtime.Data.Word as Data.Word
import qualified Data.ProtoLens.Runtime.Data.ProtoLens
       as Data.ProtoLens
import qualified
       Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Bytes
       as Data.ProtoLens.Encoding.Bytes
import qualified
       Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Growing
       as Data.ProtoLens.Encoding.Growing
import qualified
       Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Parser.Unsafe
       as Data.ProtoLens.Encoding.Parser.Unsafe
import qualified
       Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Wire
       as Data.ProtoLens.Encoding.Wire
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Field
       as Data.ProtoLens.Field
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
import qualified Data.ProtoLens.Runtime.Data.Text.Encoding
       as Data.Text.Encoding
import qualified Data.ProtoLens.Runtime.Data.Vector as Data.Vector
import qualified Data.ProtoLens.Runtime.Data.Vector.Generic
       as Data.Vector.Generic
import qualified Data.ProtoLens.Runtime.Data.Vector.Unboxed
       as Data.Vector.Unboxed
import qualified Data.ProtoLens.Runtime.Text.Read as Text.Read

boolMap ::
        forall f s a .
          (Prelude.Functor f, Data.ProtoLens.Field.HasField s "boolMap" a) =>
          Lens.Family2.LensLike' f s a
boolMap = Data.ProtoLens.Field.field @"boolMap"
boolValue ::
          forall f s a .
            (Prelude.Functor f,
             Data.ProtoLens.Field.HasField s "boolValue" a) =>
            Lens.Family2.LensLike' f s a
boolValue = Data.ProtoLens.Field.field @"boolValue"
bytesValue ::
           forall f s a .
             (Prelude.Functor f,
              Data.ProtoLens.Field.HasField s "bytesValue" a) =>
             Lens.Family2.LensLike' f s a
bytesValue = Data.ProtoLens.Field.field @"bytesValue"
doubleValue ::
            forall f s a .
              (Prelude.Functor f,
               Data.ProtoLens.Field.HasField s "doubleValue" a) =>
              Lens.Family2.LensLike' f s a
doubleValue = Data.ProtoLens.Field.field @"doubleValue"
enumValue ::
          forall f s a .
            (Prelude.Functor f,
             Data.ProtoLens.Field.HasField s "enumValue" a) =>
            Lens.Family2.LensLike' f s a
enumValue = Data.ProtoLens.Field.field @"enumValue"
floatValue ::
           forall f s a .
             (Prelude.Functor f,
              Data.ProtoLens.Field.HasField s "floatValue" a) =>
             Lens.Family2.LensLike' f s a
floatValue = Data.ProtoLens.Field.field @"floatValue"
int32Map ::
         forall f s a .
           (Prelude.Functor f,
            Data.ProtoLens.Field.HasField s "int32Map" a) =>
           Lens.Family2.LensLike' f s a
int32Map = Data.ProtoLens.Field.field @"int32Map"
int32Value ::
           forall f s a .
             (Prelude.Functor f,
              Data.ProtoLens.Field.HasField s "int32Value" a) =>
             Lens.Family2.LensLike' f s a
int32Value = Data.ProtoLens.Field.field @"int32Value"
int64Map ::
         forall f s a .
           (Prelude.Functor f,
            Data.ProtoLens.Field.HasField s "int64Map" a) =>
           Lens.Family2.LensLike' f s a
int64Map = Data.ProtoLens.Field.field @"int64Map"
int64Value ::
           forall f s a .
             (Prelude.Functor f,
              Data.ProtoLens.Field.HasField s "int64Value" a) =>
             Lens.Family2.LensLike' f s a
int64Value = Data.ProtoLens.Field.field @"int64Value"
key ::
    forall f s a .
      (Prelude.Functor f, Data.ProtoLens.Field.HasField s "key" a) =>
      Lens.Family2.LensLike' f s a
key = Data.ProtoLens.Field.field @"key"
mapMap ::
       forall f s a .
         (Prelude.Functor f, Data.ProtoLens.Field.HasField s "mapMap" a) =>
         Lens.Family2.LensLike' f s a
mapMap = Data.ProtoLens.Field.field @"mapMap"
maybe'messageValue ::
                   forall f s a .
                     (Prelude.Functor f,
                      Data.ProtoLens.Field.HasField s "maybe'messageValue" a) =>
                     Lens.Family2.LensLike' f s a
maybe'messageValue
  = Data.ProtoLens.Field.field @"maybe'messageValue"
maybe'oneofBytesValue ::
                      forall f s a .
                        (Prelude.Functor f,
                         Data.ProtoLens.Field.HasField s "maybe'oneofBytesValue" a) =>
                        Lens.Family2.LensLike' f s a
maybe'oneofBytesValue
  = Data.ProtoLens.Field.field @"maybe'oneofBytesValue"
maybe'oneofEnumValue ::
                     forall f s a .
                       (Prelude.Functor f,
                        Data.ProtoLens.Field.HasField s "maybe'oneofEnumValue" a) =>
                       Lens.Family2.LensLike' f s a
maybe'oneofEnumValue
  = Data.ProtoLens.Field.field @"maybe'oneofEnumValue"
maybe'oneofInt32Value ::
                      forall f s a .
                        (Prelude.Functor f,
                         Data.ProtoLens.Field.HasField s "maybe'oneofInt32Value" a) =>
                        Lens.Family2.LensLike' f s a
maybe'oneofInt32Value
  = Data.ProtoLens.Field.field @"maybe'oneofInt32Value"
maybe'oneofMessageValue ::
                        forall f s a .
                          (Prelude.Functor f,
                           Data.ProtoLens.Field.HasField s "maybe'oneofMessageValue" a) =>
                          Lens.Family2.LensLike' f s a
maybe'oneofMessageValue
  = Data.ProtoLens.Field.field @"maybe'oneofMessageValue"
maybe'oneofStringValue ::
                       forall f s a .
                         (Prelude.Functor f,
                          Data.ProtoLens.Field.HasField s "maybe'oneofStringValue" a) =>
                         Lens.Family2.LensLike' f s a
maybe'oneofStringValue
  = Data.ProtoLens.Field.field @"maybe'oneofStringValue"
maybe'oneofValue ::
                 forall f s a .
                   (Prelude.Functor f,
                    Data.ProtoLens.Field.HasField s "maybe'oneofValue" a) =>
                   Lens.Family2.LensLike' f s a
maybe'oneofValue = Data.ProtoLens.Field.field @"maybe'oneofValue"
maybe'value ::
            forall f s a .
              (Prelude.Functor f,
               Data.ProtoLens.Field.HasField s "maybe'value" a) =>
              Lens.Family2.LensLike' f s a
maybe'value = Data.ProtoLens.Field.field @"maybe'value"
messageValue ::
             forall f s a .
               (Prelude.Functor f,
                Data.ProtoLens.Field.HasField s "messageValue" a) =>
               Lens.Family2.LensLike' f s a
messageValue = Data.ProtoLens.Field.field @"messageValue"
oneofBytesValue ::
                forall f s a .
                  (Prelude.Functor f,
                   Data.ProtoLens.Field.HasField s "oneofBytesValue" a) =>
                  Lens.Family2.LensLike' f s a
oneofBytesValue = Data.ProtoLens.Field.field @"oneofBytesValue"
oneofEnumValue ::
               forall f s a .
                 (Prelude.Functor f,
                  Data.ProtoLens.Field.HasField s "oneofEnumValue" a) =>
                 Lens.Family2.LensLike' f s a
oneofEnumValue = Data.ProtoLens.Field.field @"oneofEnumValue"
oneofInt32Value ::
                forall f s a .
                  (Prelude.Functor f,
                   Data.ProtoLens.Field.HasField s "oneofInt32Value" a) =>
                  Lens.Family2.LensLike' f s a
oneofInt32Value = Data.ProtoLens.Field.field @"oneofInt32Value"
oneofMessageValue ::
                  forall f s a .
                    (Prelude.Functor f,
                     Data.ProtoLens.Field.HasField s "oneofMessageValue" a) =>
                    Lens.Family2.LensLike' f s a
oneofMessageValue = Data.ProtoLens.Field.field @"oneofMessageValue"
oneofStringValue ::
                 forall f s a .
                   (Prelude.Functor f,
                    Data.ProtoLens.Field.HasField s "oneofStringValue" a) =>
                   Lens.Family2.LensLike' f s a
oneofStringValue = Data.ProtoLens.Field.field @"oneofStringValue"
repeatedBoolValue ::
                  forall f s a .
                    (Prelude.Functor f,
                     Data.ProtoLens.Field.HasField s "repeatedBoolValue" a) =>
                    Lens.Family2.LensLike' f s a
repeatedBoolValue = Data.ProtoLens.Field.field @"repeatedBoolValue"
repeatedBytesValue ::
                   forall f s a .
                     (Prelude.Functor f,
                      Data.ProtoLens.Field.HasField s "repeatedBytesValue" a) =>
                     Lens.Family2.LensLike' f s a
repeatedBytesValue
  = Data.ProtoLens.Field.field @"repeatedBytesValue"
repeatedDoubleValue ::
                    forall f s a .
                      (Prelude.Functor f,
                       Data.ProtoLens.Field.HasField s "repeatedDoubleValue" a) =>
                      Lens.Family2.LensLike' f s a
repeatedDoubleValue
  = Data.ProtoLens.Field.field @"repeatedDoubleValue"
repeatedEnumValue ::
                  forall f s a .
                    (Prelude.Functor f,
                     Data.ProtoLens.Field.HasField s "repeatedEnumValue" a) =>
                    Lens.Family2.LensLike' f s a
repeatedEnumValue = Data.ProtoLens.Field.field @"repeatedEnumValue"
repeatedFloatValue ::
                   forall f s a .
                     (Prelude.Functor f,
                      Data.ProtoLens.Field.HasField s "repeatedFloatValue" a) =>
                     Lens.Family2.LensLike' f s a
repeatedFloatValue
  = Data.ProtoLens.Field.field @"repeatedFloatValue"
repeatedInt32Value ::
                   forall f s a .
                     (Prelude.Functor f,
                      Data.ProtoLens.Field.HasField s "repeatedInt32Value" a) =>
                     Lens.Family2.LensLike' f s a
repeatedInt32Value
  = Data.ProtoLens.Field.field @"repeatedInt32Value"
repeatedInt64Value ::
                   forall f s a .
                     (Prelude.Functor f,
                      Data.ProtoLens.Field.HasField s "repeatedInt64Value" a) =>
                     Lens.Family2.LensLike' f s a
repeatedInt64Value
  = Data.ProtoLens.Field.field @"repeatedInt64Value"
repeatedMessageValue ::
                     forall f s a .
                       (Prelude.Functor f,
                        Data.ProtoLens.Field.HasField s "repeatedMessageValue" a) =>
                       Lens.Family2.LensLike' f s a
repeatedMessageValue
  = Data.ProtoLens.Field.field @"repeatedMessageValue"
repeatedStringValue ::
                    forall f s a .
                      (Prelude.Functor f,
                       Data.ProtoLens.Field.HasField s "repeatedStringValue" a) =>
                      Lens.Family2.LensLike' f s a
repeatedStringValue
  = Data.ProtoLens.Field.field @"repeatedStringValue"
repeatedUint32Value ::
                    forall f s a .
                      (Prelude.Functor f,
                       Data.ProtoLens.Field.HasField s "repeatedUint32Value" a) =>
                      Lens.Family2.LensLike' f s a
repeatedUint32Value
  = Data.ProtoLens.Field.field @"repeatedUint32Value"
repeatedUint64Value ::
                    forall f s a .
                      (Prelude.Functor f,
                       Data.ProtoLens.Field.HasField s "repeatedUint64Value" a) =>
                      Lens.Family2.LensLike' f s a
repeatedUint64Value
  = Data.ProtoLens.Field.field @"repeatedUint64Value"
stringMap ::
          forall f s a .
            (Prelude.Functor f,
             Data.ProtoLens.Field.HasField s "stringMap" a) =>
            Lens.Family2.LensLike' f s a
stringMap = Data.ProtoLens.Field.field @"stringMap"
stringValue ::
            forall f s a .
              (Prelude.Functor f,
               Data.ProtoLens.Field.HasField s "stringValue" a) =>
              Lens.Family2.LensLike' f s a
stringValue = Data.ProtoLens.Field.field @"stringValue"
uint32Map ::
          forall f s a .
            (Prelude.Functor f,
             Data.ProtoLens.Field.HasField s "uint32Map" a) =>
            Lens.Family2.LensLike' f s a
uint32Map = Data.ProtoLens.Field.field @"uint32Map"
uint32Value ::
            forall f s a .
              (Prelude.Functor f,
               Data.ProtoLens.Field.HasField s "uint32Value" a) =>
              Lens.Family2.LensLike' f s a
uint32Value = Data.ProtoLens.Field.field @"uint32Value"
uint64Map ::
          forall f s a .
            (Prelude.Functor f,
             Data.ProtoLens.Field.HasField s "uint64Map" a) =>
            Lens.Family2.LensLike' f s a
uint64Map = Data.ProtoLens.Field.field @"uint64Map"
uint64Value ::
            forall f s a .
              (Prelude.Functor f,
               Data.ProtoLens.Field.HasField s "uint64Value" a) =>
              Lens.Family2.LensLike' f s a
uint64Value = Data.ProtoLens.Field.field @"uint64Value"
value ::
      forall f s a .
        (Prelude.Functor f, Data.ProtoLens.Field.HasField s "value" a) =>
        Lens.Family2.LensLike' f s a
value = Data.ProtoLens.Field.field @"value"
vec'repeatedBoolValue ::
                      forall f s a .
                        (Prelude.Functor f,
                         Data.ProtoLens.Field.HasField s "vec'repeatedBoolValue" a) =>
                        Lens.Family2.LensLike' f s a
vec'repeatedBoolValue
  = Data.ProtoLens.Field.field @"vec'repeatedBoolValue"
vec'repeatedBytesValue ::
                       forall f s a .
                         (Prelude.Functor f,
                          Data.ProtoLens.Field.HasField s "vec'repeatedBytesValue" a) =>
                         Lens.Family2.LensLike' f s a
vec'repeatedBytesValue
  = Data.ProtoLens.Field.field @"vec'repeatedBytesValue"
vec'repeatedDoubleValue ::
                        forall f s a .
                          (Prelude.Functor f,
                           Data.ProtoLens.Field.HasField s "vec'repeatedDoubleValue" a) =>
                          Lens.Family2.LensLike' f s a
vec'repeatedDoubleValue
  = Data.ProtoLens.Field.field @"vec'repeatedDoubleValue"
vec'repeatedEnumValue ::
                      forall f s a .
                        (Prelude.Functor f,
                         Data.ProtoLens.Field.HasField s "vec'repeatedEnumValue" a) =>
                        Lens.Family2.LensLike' f s a
vec'repeatedEnumValue
  = Data.ProtoLens.Field.field @"vec'repeatedEnumValue"
vec'repeatedFloatValue ::
                       forall f s a .
                         (Prelude.Functor f,
                          Data.ProtoLens.Field.HasField s "vec'repeatedFloatValue" a) =>
                         Lens.Family2.LensLike' f s a
vec'repeatedFloatValue
  = Data.ProtoLens.Field.field @"vec'repeatedFloatValue"
vec'repeatedInt32Value ::
                       forall f s a .
                         (Prelude.Functor f,
                          Data.ProtoLens.Field.HasField s "vec'repeatedInt32Value" a) =>
                         Lens.Family2.LensLike' f s a
vec'repeatedInt32Value
  = Data.ProtoLens.Field.field @"vec'repeatedInt32Value"
vec'repeatedInt64Value ::
                       forall f s a .
                         (Prelude.Functor f,
                          Data.ProtoLens.Field.HasField s "vec'repeatedInt64Value" a) =>
                         Lens.Family2.LensLike' f s a
vec'repeatedInt64Value
  = Data.ProtoLens.Field.field @"vec'repeatedInt64Value"
vec'repeatedMessageValue ::
                         forall f s a .
                           (Prelude.Functor f,
                            Data.ProtoLens.Field.HasField s "vec'repeatedMessageValue" a) =>
                           Lens.Family2.LensLike' f s a
vec'repeatedMessageValue
  = Data.ProtoLens.Field.field @"vec'repeatedMessageValue"
vec'repeatedStringValue ::
                        forall f s a .
                          (Prelude.Functor f,
                           Data.ProtoLens.Field.HasField s "vec'repeatedStringValue" a) =>
                          Lens.Family2.LensLike' f s a
vec'repeatedStringValue
  = Data.ProtoLens.Field.field @"vec'repeatedStringValue"
vec'repeatedUint32Value ::
                        forall f s a .
                          (Prelude.Functor f,
                           Data.ProtoLens.Field.HasField s "vec'repeatedUint32Value" a) =>
                          Lens.Family2.LensLike' f s a
vec'repeatedUint32Value
  = Data.ProtoLens.Field.field @"vec'repeatedUint32Value"
vec'repeatedUint64Value ::
                        forall f s a .
                          (Prelude.Functor f,
                           Data.ProtoLens.Field.HasField s "vec'repeatedUint64Value" a) =>
                          Lens.Family2.LensLike' f s a
vec'repeatedUint64Value
  = Data.ProtoLens.Field.field @"vec'repeatedUint64Value"