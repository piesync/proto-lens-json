{- This file was auto-generated from json_format_proto3.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies,
  UndecidableInstances, GeneralizedNewtypeDeriving,
  MultiParamTypeClasses, FlexibleContexts, FlexibleInstances,
  PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports#-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports#-}
module Proto.JsonFormatProto3
       (EnumType(..), EnumType(), EnumType'UnrecognizedValue,
        MessageType(..), TestMap(..), TestMap'BoolMapEntry(..),
        TestMap'Int32MapEntry(..), TestMap'Int64MapEntry(..),
        TestMap'StringMapEntry(..), TestMap'Uint32MapEntry(..),
        TestMap'Uint64MapEntry(..), TestMessage(..), TestNestedMap(..),
        TestNestedMap'BoolMapEntry(..), TestNestedMap'Int32MapEntry(..),
        TestNestedMap'Int64MapEntry(..), TestNestedMap'MapMapEntry(..),
        TestNestedMap'StringMapEntry(..), TestNestedMap'Uint32MapEntry(..),
        TestNestedMap'Uint64MapEntry(..), TestOneof(..),
        TestOneof'OneofValue(..), _TestOneof'OneofInt32Value,
        _TestOneof'OneofStringValue, _TestOneof'OneofBytesValue,
        _TestOneof'OneofEnumValue, _TestOneof'OneofMessageValue)
       where
import qualified Data.ProtoLens.Reexport.Lens.Labels.Prism
       as Lens.Labels.Prism
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

data EnumType = FOO
              | BAR
              | EnumType'Unrecognized !EnumType'UnrecognizedValue
                  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
newtype EnumType'UnrecognizedValue = EnumType'UnrecognizedValue Data.Int.Int32
                                       deriving (Prelude.Eq, Prelude.Ord, Prelude.Show)
instance Data.ProtoLens.MessageEnum EnumType where
        maybeToEnum 0 = Prelude.Just FOO
        maybeToEnum 1 = Prelude.Just BAR
        maybeToEnum k
          = Prelude.Just
              (EnumType'Unrecognized
                 (EnumType'UnrecognizedValue (Prelude.fromIntegral k)))
        showEnum FOO = "FOO"
        showEnum BAR = "BAR"
        showEnum (EnumType'Unrecognized (EnumType'UnrecognizedValue k))
          = Prelude.show k
        readEnum "FOO" = Prelude.Just FOO
        readEnum "BAR" = Prelude.Just BAR
        readEnum k
          = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded EnumType where
        minBound = FOO
        maxBound = BAR
instance Prelude.Enum EnumType where
        toEnum k__
          = Prelude.maybe
              (Prelude.error
                 ((Prelude.++) "toEnum: unknown value for enum EnumType: "
                    (Prelude.show k__)))
              Prelude.id
              (Data.ProtoLens.maybeToEnum k__)
        fromEnum FOO = 0
        fromEnum BAR = 1
        fromEnum (EnumType'Unrecognized (EnumType'UnrecognizedValue k))
          = Prelude.fromIntegral k
        succ BAR
          = Prelude.error
              "EnumType.succ: bad argument BAR. This value would be out of bounds."
        succ FOO = BAR
        succ _
          = Prelude.error "EnumType.succ: bad argument: unrecognized value"
        pred FOO
          = Prelude.error
              "EnumType.pred: bad argument FOO. This value would be out of bounds."
        pred BAR = FOO
        pred _
          = Prelude.error "EnumType.pred: bad argument: unrecognized value"
        enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
        enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
        enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
        enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.Default.Class.Default EnumType where
        def = FOO
instance Data.ProtoLens.FieldDefault EnumType where
        fieldDefault = FOO
{- | Fields :

    * 'Proto.JsonFormatProto3_Fields.value' @:: Lens' MessageType Data.Int.Int32@
 -}
data MessageType = MessageType{_MessageType'value ::
                               !Data.Int.Int32,
                               _MessageType'_unknownFields :: !Data.ProtoLens.FieldSet}
                     deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f MessageType x a, a ~ b) =>
         Lens.Labels.HasLens f MessageType MessageType x a b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f MessageType "value" (Data.Int.Int32)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _MessageType'value
                 (\ x__ y__ -> x__{_MessageType'value = y__}))
              Prelude.id
instance Data.Default.Class.Default MessageType where
        def
          = MessageType{_MessageType'value = Data.ProtoLens.fieldDefault,
                        _MessageType'_unknownFields = ([])}
instance Data.ProtoLens.Message MessageType where
        messageName _ = Data.Text.pack "proto3.MessageType"
        fieldsByTag
          = let value__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "value"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "value")))
                      :: Data.ProtoLens.FieldDescriptor MessageType
              in
              Data.Map.fromList [(Data.ProtoLens.Tag 1, value__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _MessageType'_unknownFields
              (\ x__ y__ -> x__{_MessageType'_unknownFields = y__})
{- | Fields :

    * 'Proto.JsonFormatProto3_Fields.boolMap' @:: Lens' TestMap (Data.Map.Map Prelude.Bool Data.Int.Int32)@
    * 'Proto.JsonFormatProto3_Fields.int32Map' @:: Lens' TestMap (Data.Map.Map Data.Int.Int32 Data.Int.Int32)@
    * 'Proto.JsonFormatProto3_Fields.int64Map' @:: Lens' TestMap (Data.Map.Map Data.Int.Int64 Data.Int.Int32)@
    * 'Proto.JsonFormatProto3_Fields.uint32Map' @:: Lens' TestMap (Data.Map.Map Data.Word.Word32 Data.Int.Int32)@
    * 'Proto.JsonFormatProto3_Fields.uint64Map' @:: Lens' TestMap (Data.Map.Map Data.Word.Word64 Data.Int.Int32)@
    * 'Proto.JsonFormatProto3_Fields.stringMap' @:: Lens' TestMap (Data.Map.Map Data.Text.Text Data.Int.Int32)@
 -}
data TestMap = TestMap{_TestMap'boolMap ::
                       !(Data.Map.Map Prelude.Bool Data.Int.Int32),
                       _TestMap'int32Map :: !(Data.Map.Map Data.Int.Int32 Data.Int.Int32),
                       _TestMap'int64Map :: !(Data.Map.Map Data.Int.Int64 Data.Int.Int32),
                       _TestMap'uint32Map ::
                       !(Data.Map.Map Data.Word.Word32 Data.Int.Int32),
                       _TestMap'uint64Map ::
                       !(Data.Map.Map Data.Word.Word64 Data.Int.Int32),
                       _TestMap'stringMap ::
                       !(Data.Map.Map Data.Text.Text Data.Int.Int32),
                       _TestMap'_unknownFields :: !Data.ProtoLens.FieldSet}
                 deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f TestMap x a, a ~ b) =>
         Lens.Labels.HasLens f TestMap TestMap x a b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f TestMap "boolMap"
           (Data.Map.Map Prelude.Bool Data.Int.Int32)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TestMap'boolMap
                 (\ x__ y__ -> x__{_TestMap'boolMap = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f TestMap "int32Map"
           (Data.Map.Map Data.Int.Int32 Data.Int.Int32)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TestMap'int32Map
                 (\ x__ y__ -> x__{_TestMap'int32Map = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f TestMap "int64Map"
           (Data.Map.Map Data.Int.Int64 Data.Int.Int32)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TestMap'int64Map
                 (\ x__ y__ -> x__{_TestMap'int64Map = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f TestMap "uint32Map"
           (Data.Map.Map Data.Word.Word32 Data.Int.Int32)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TestMap'uint32Map
                 (\ x__ y__ -> x__{_TestMap'uint32Map = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f TestMap "uint64Map"
           (Data.Map.Map Data.Word.Word64 Data.Int.Int32)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TestMap'uint64Map
                 (\ x__ y__ -> x__{_TestMap'uint64Map = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f TestMap "stringMap"
           (Data.Map.Map Data.Text.Text Data.Int.Int32)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TestMap'stringMap
                 (\ x__ y__ -> x__{_TestMap'stringMap = y__}))
              Prelude.id
instance Data.Default.Class.Default TestMap where
        def
          = TestMap{_TestMap'boolMap = Data.Map.empty,
                    _TestMap'int32Map = Data.Map.empty,
                    _TestMap'int64Map = Data.Map.empty,
                    _TestMap'uint32Map = Data.Map.empty,
                    _TestMap'uint64Map = Data.Map.empty,
                    _TestMap'stringMap = Data.Map.empty,
                    _TestMap'_unknownFields = ([])}
instance Data.ProtoLens.Message TestMap where
        messageName _ = Data.Text.pack "proto3.TestMap"
        fieldsByTag
          = let boolMap__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "bool_map"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor TestMap'BoolMapEntry)
                      (Data.ProtoLens.MapField
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "key"))
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "value"))
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "boolMap")))
                      :: Data.ProtoLens.FieldDescriptor TestMap
                int32Map__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "int32_map"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor TestMap'Int32MapEntry)
                      (Data.ProtoLens.MapField
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "key"))
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "value"))
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "int32Map")))
                      :: Data.ProtoLens.FieldDescriptor TestMap
                int64Map__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "int64_map"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor TestMap'Int64MapEntry)
                      (Data.ProtoLens.MapField
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "key"))
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "value"))
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "int64Map")))
                      :: Data.ProtoLens.FieldDescriptor TestMap
                uint32Map__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "uint32_map"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor TestMap'Uint32MapEntry)
                      (Data.ProtoLens.MapField
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "key"))
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "value"))
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "uint32Map")))
                      :: Data.ProtoLens.FieldDescriptor TestMap
                uint64Map__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "uint64_map"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor TestMap'Uint64MapEntry)
                      (Data.ProtoLens.MapField
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "key"))
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "value"))
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "uint64Map")))
                      :: Data.ProtoLens.FieldDescriptor TestMap
                stringMap__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "string_map"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor TestMap'StringMapEntry)
                      (Data.ProtoLens.MapField
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "key"))
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "value"))
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "stringMap")))
                      :: Data.ProtoLens.FieldDescriptor TestMap
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, boolMap__field_descriptor),
                 (Data.ProtoLens.Tag 2, int32Map__field_descriptor),
                 (Data.ProtoLens.Tag 3, int64Map__field_descriptor),
                 (Data.ProtoLens.Tag 4, uint32Map__field_descriptor),
                 (Data.ProtoLens.Tag 5, uint64Map__field_descriptor),
                 (Data.ProtoLens.Tag 6, stringMap__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _TestMap'_unknownFields
              (\ x__ y__ -> x__{_TestMap'_unknownFields = y__})
{- | Fields :

    * 'Proto.JsonFormatProto3_Fields.key' @:: Lens' TestMap'BoolMapEntry Prelude.Bool@
    * 'Proto.JsonFormatProto3_Fields.value' @:: Lens' TestMap'BoolMapEntry Data.Int.Int32@
 -}
data TestMap'BoolMapEntry = TestMap'BoolMapEntry{_TestMap'BoolMapEntry'key
                                                 :: !Prelude.Bool,
                                                 _TestMap'BoolMapEntry'value :: !Data.Int.Int32,
                                                 _TestMap'BoolMapEntry'_unknownFields ::
                                                 !Data.ProtoLens.FieldSet}
                              deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f TestMap'BoolMapEntry x a,
          a ~ b) =>
         Lens.Labels.HasLens f TestMap'BoolMapEntry TestMap'BoolMapEntry x a
           b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f TestMap'BoolMapEntry "key" (Prelude.Bool)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TestMap'BoolMapEntry'key
                 (\ x__ y__ -> x__{_TestMap'BoolMapEntry'key = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f TestMap'BoolMapEntry "value"
           (Data.Int.Int32)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TestMap'BoolMapEntry'value
                 (\ x__ y__ -> x__{_TestMap'BoolMapEntry'value = y__}))
              Prelude.id
instance Data.Default.Class.Default TestMap'BoolMapEntry where
        def
          = TestMap'BoolMapEntry{_TestMap'BoolMapEntry'key =
                                   Data.ProtoLens.fieldDefault,
                                 _TestMap'BoolMapEntry'value = Data.ProtoLens.fieldDefault,
                                 _TestMap'BoolMapEntry'_unknownFields = ([])}
instance Data.ProtoLens.Message TestMap'BoolMapEntry where
        messageName _ = Data.Text.pack "proto3.TestMap.BoolMapEntry"
        fieldsByTag
          = let key__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "key"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                         Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "key")))
                      :: Data.ProtoLens.FieldDescriptor TestMap'BoolMapEntry
                value__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "value"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "value")))
                      :: Data.ProtoLens.FieldDescriptor TestMap'BoolMapEntry
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, key__field_descriptor),
                 (Data.ProtoLens.Tag 2, value__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _TestMap'BoolMapEntry'_unknownFields
              (\ x__ y__ -> x__{_TestMap'BoolMapEntry'_unknownFields = y__})
{- | Fields :

    * 'Proto.JsonFormatProto3_Fields.key' @:: Lens' TestMap'Int32MapEntry Data.Int.Int32@
    * 'Proto.JsonFormatProto3_Fields.value' @:: Lens' TestMap'Int32MapEntry Data.Int.Int32@
 -}
data TestMap'Int32MapEntry = TestMap'Int32MapEntry{_TestMap'Int32MapEntry'key
                                                   :: !Data.Int.Int32,
                                                   _TestMap'Int32MapEntry'value :: !Data.Int.Int32,
                                                   _TestMap'Int32MapEntry'_unknownFields ::
                                                   !Data.ProtoLens.FieldSet}
                               deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f TestMap'Int32MapEntry x a,
          a ~ b) =>
         Lens.Labels.HasLens f TestMap'Int32MapEntry TestMap'Int32MapEntry x
           a
           b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f TestMap'Int32MapEntry "key" (Data.Int.Int32)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TestMap'Int32MapEntry'key
                 (\ x__ y__ -> x__{_TestMap'Int32MapEntry'key = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f TestMap'Int32MapEntry "value"
           (Data.Int.Int32)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TestMap'Int32MapEntry'value
                 (\ x__ y__ -> x__{_TestMap'Int32MapEntry'value = y__}))
              Prelude.id
instance Data.Default.Class.Default TestMap'Int32MapEntry where
        def
          = TestMap'Int32MapEntry{_TestMap'Int32MapEntry'key =
                                    Data.ProtoLens.fieldDefault,
                                  _TestMap'Int32MapEntry'value = Data.ProtoLens.fieldDefault,
                                  _TestMap'Int32MapEntry'_unknownFields = ([])}
instance Data.ProtoLens.Message TestMap'Int32MapEntry where
        messageName _ = Data.Text.pack "proto3.TestMap.Int32MapEntry"
        fieldsByTag
          = let key__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "key"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "key")))
                      :: Data.ProtoLens.FieldDescriptor TestMap'Int32MapEntry
                value__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "value"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "value")))
                      :: Data.ProtoLens.FieldDescriptor TestMap'Int32MapEntry
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, key__field_descriptor),
                 (Data.ProtoLens.Tag 2, value__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _TestMap'Int32MapEntry'_unknownFields
              (\ x__ y__ -> x__{_TestMap'Int32MapEntry'_unknownFields = y__})
{- | Fields :

    * 'Proto.JsonFormatProto3_Fields.key' @:: Lens' TestMap'Int64MapEntry Data.Int.Int64@
    * 'Proto.JsonFormatProto3_Fields.value' @:: Lens' TestMap'Int64MapEntry Data.Int.Int32@
 -}
data TestMap'Int64MapEntry = TestMap'Int64MapEntry{_TestMap'Int64MapEntry'key
                                                   :: !Data.Int.Int64,
                                                   _TestMap'Int64MapEntry'value :: !Data.Int.Int32,
                                                   _TestMap'Int64MapEntry'_unknownFields ::
                                                   !Data.ProtoLens.FieldSet}
                               deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f TestMap'Int64MapEntry x a,
          a ~ b) =>
         Lens.Labels.HasLens f TestMap'Int64MapEntry TestMap'Int64MapEntry x
           a
           b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f TestMap'Int64MapEntry "key" (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TestMap'Int64MapEntry'key
                 (\ x__ y__ -> x__{_TestMap'Int64MapEntry'key = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f TestMap'Int64MapEntry "value"
           (Data.Int.Int32)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TestMap'Int64MapEntry'value
                 (\ x__ y__ -> x__{_TestMap'Int64MapEntry'value = y__}))
              Prelude.id
instance Data.Default.Class.Default TestMap'Int64MapEntry where
        def
          = TestMap'Int64MapEntry{_TestMap'Int64MapEntry'key =
                                    Data.ProtoLens.fieldDefault,
                                  _TestMap'Int64MapEntry'value = Data.ProtoLens.fieldDefault,
                                  _TestMap'Int64MapEntry'_unknownFields = ([])}
instance Data.ProtoLens.Message TestMap'Int64MapEntry where
        messageName _ = Data.Text.pack "proto3.TestMap.Int64MapEntry"
        fieldsByTag
          = let key__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "key"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "key")))
                      :: Data.ProtoLens.FieldDescriptor TestMap'Int64MapEntry
                value__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "value"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "value")))
                      :: Data.ProtoLens.FieldDescriptor TestMap'Int64MapEntry
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, key__field_descriptor),
                 (Data.ProtoLens.Tag 2, value__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _TestMap'Int64MapEntry'_unknownFields
              (\ x__ y__ -> x__{_TestMap'Int64MapEntry'_unknownFields = y__})
{- | Fields :

    * 'Proto.JsonFormatProto3_Fields.key' @:: Lens' TestMap'StringMapEntry Data.Text.Text@
    * 'Proto.JsonFormatProto3_Fields.value' @:: Lens' TestMap'StringMapEntry Data.Int.Int32@
 -}
data TestMap'StringMapEntry = TestMap'StringMapEntry{_TestMap'StringMapEntry'key
                                                     :: !Data.Text.Text,
                                                     _TestMap'StringMapEntry'value ::
                                                     !Data.Int.Int32,
                                                     _TestMap'StringMapEntry'_unknownFields ::
                                                     !Data.ProtoLens.FieldSet}
                                deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f TestMap'StringMapEntry x a,
          a ~ b) =>
         Lens.Labels.HasLens f TestMap'StringMapEntry TestMap'StringMapEntry
           x
           a
           b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f TestMap'StringMapEntry "key"
           (Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TestMap'StringMapEntry'key
                 (\ x__ y__ -> x__{_TestMap'StringMapEntry'key = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f TestMap'StringMapEntry "value"
           (Data.Int.Int32)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TestMap'StringMapEntry'value
                 (\ x__ y__ -> x__{_TestMap'StringMapEntry'value = y__}))
              Prelude.id
instance Data.Default.Class.Default TestMap'StringMapEntry where
        def
          = TestMap'StringMapEntry{_TestMap'StringMapEntry'key =
                                     Data.ProtoLens.fieldDefault,
                                   _TestMap'StringMapEntry'value = Data.ProtoLens.fieldDefault,
                                   _TestMap'StringMapEntry'_unknownFields = ([])}
instance Data.ProtoLens.Message TestMap'StringMapEntry where
        messageName _ = Data.Text.pack "proto3.TestMap.StringMapEntry"
        fieldsByTag
          = let key__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "key"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "key")))
                      :: Data.ProtoLens.FieldDescriptor TestMap'StringMapEntry
                value__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "value"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "value")))
                      :: Data.ProtoLens.FieldDescriptor TestMap'StringMapEntry
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, key__field_descriptor),
                 (Data.ProtoLens.Tag 2, value__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens
              _TestMap'StringMapEntry'_unknownFields
              (\ x__ y__ -> x__{_TestMap'StringMapEntry'_unknownFields = y__})
{- | Fields :

    * 'Proto.JsonFormatProto3_Fields.key' @:: Lens' TestMap'Uint32MapEntry Data.Word.Word32@
    * 'Proto.JsonFormatProto3_Fields.value' @:: Lens' TestMap'Uint32MapEntry Data.Int.Int32@
 -}
data TestMap'Uint32MapEntry = TestMap'Uint32MapEntry{_TestMap'Uint32MapEntry'key
                                                     :: !Data.Word.Word32,
                                                     _TestMap'Uint32MapEntry'value ::
                                                     !Data.Int.Int32,
                                                     _TestMap'Uint32MapEntry'_unknownFields ::
                                                     !Data.ProtoLens.FieldSet}
                                deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f TestMap'Uint32MapEntry x a,
          a ~ b) =>
         Lens.Labels.HasLens f TestMap'Uint32MapEntry TestMap'Uint32MapEntry
           x
           a
           b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f TestMap'Uint32MapEntry "key"
           (Data.Word.Word32)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TestMap'Uint32MapEntry'key
                 (\ x__ y__ -> x__{_TestMap'Uint32MapEntry'key = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f TestMap'Uint32MapEntry "value"
           (Data.Int.Int32)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TestMap'Uint32MapEntry'value
                 (\ x__ y__ -> x__{_TestMap'Uint32MapEntry'value = y__}))
              Prelude.id
instance Data.Default.Class.Default TestMap'Uint32MapEntry where
        def
          = TestMap'Uint32MapEntry{_TestMap'Uint32MapEntry'key =
                                     Data.ProtoLens.fieldDefault,
                                   _TestMap'Uint32MapEntry'value = Data.ProtoLens.fieldDefault,
                                   _TestMap'Uint32MapEntry'_unknownFields = ([])}
instance Data.ProtoLens.Message TestMap'Uint32MapEntry where
        messageName _ = Data.Text.pack "proto3.TestMap.Uint32MapEntry"
        fieldsByTag
          = let key__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "key"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "key")))
                      :: Data.ProtoLens.FieldDescriptor TestMap'Uint32MapEntry
                value__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "value"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "value")))
                      :: Data.ProtoLens.FieldDescriptor TestMap'Uint32MapEntry
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, key__field_descriptor),
                 (Data.ProtoLens.Tag 2, value__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens
              _TestMap'Uint32MapEntry'_unknownFields
              (\ x__ y__ -> x__{_TestMap'Uint32MapEntry'_unknownFields = y__})
{- | Fields :

    * 'Proto.JsonFormatProto3_Fields.key' @:: Lens' TestMap'Uint64MapEntry Data.Word.Word64@
    * 'Proto.JsonFormatProto3_Fields.value' @:: Lens' TestMap'Uint64MapEntry Data.Int.Int32@
 -}
data TestMap'Uint64MapEntry = TestMap'Uint64MapEntry{_TestMap'Uint64MapEntry'key
                                                     :: !Data.Word.Word64,
                                                     _TestMap'Uint64MapEntry'value ::
                                                     !Data.Int.Int32,
                                                     _TestMap'Uint64MapEntry'_unknownFields ::
                                                     !Data.ProtoLens.FieldSet}
                                deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f TestMap'Uint64MapEntry x a,
          a ~ b) =>
         Lens.Labels.HasLens f TestMap'Uint64MapEntry TestMap'Uint64MapEntry
           x
           a
           b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f TestMap'Uint64MapEntry "key"
           (Data.Word.Word64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TestMap'Uint64MapEntry'key
                 (\ x__ y__ -> x__{_TestMap'Uint64MapEntry'key = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f TestMap'Uint64MapEntry "value"
           (Data.Int.Int32)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TestMap'Uint64MapEntry'value
                 (\ x__ y__ -> x__{_TestMap'Uint64MapEntry'value = y__}))
              Prelude.id
instance Data.Default.Class.Default TestMap'Uint64MapEntry where
        def
          = TestMap'Uint64MapEntry{_TestMap'Uint64MapEntry'key =
                                     Data.ProtoLens.fieldDefault,
                                   _TestMap'Uint64MapEntry'value = Data.ProtoLens.fieldDefault,
                                   _TestMap'Uint64MapEntry'_unknownFields = ([])}
instance Data.ProtoLens.Message TestMap'Uint64MapEntry where
        messageName _ = Data.Text.pack "proto3.TestMap.Uint64MapEntry"
        fieldsByTag
          = let key__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "key"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "key")))
                      :: Data.ProtoLens.FieldDescriptor TestMap'Uint64MapEntry
                value__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "value"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "value")))
                      :: Data.ProtoLens.FieldDescriptor TestMap'Uint64MapEntry
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, key__field_descriptor),
                 (Data.ProtoLens.Tag 2, value__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens
              _TestMap'Uint64MapEntry'_unknownFields
              (\ x__ y__ -> x__{_TestMap'Uint64MapEntry'_unknownFields = y__})
{- | Fields :

    * 'Proto.JsonFormatProto3_Fields.boolValue' @:: Lens' TestMessage Prelude.Bool@
    * 'Proto.JsonFormatProto3_Fields.int32Value' @:: Lens' TestMessage Data.Int.Int32@
    * 'Proto.JsonFormatProto3_Fields.int64Value' @:: Lens' TestMessage Data.Int.Int64@
    * 'Proto.JsonFormatProto3_Fields.uint32Value' @:: Lens' TestMessage Data.Word.Word32@
    * 'Proto.JsonFormatProto3_Fields.uint64Value' @:: Lens' TestMessage Data.Word.Word64@
    * 'Proto.JsonFormatProto3_Fields.floatValue' @:: Lens' TestMessage Prelude.Float@
    * 'Proto.JsonFormatProto3_Fields.doubleValue' @:: Lens' TestMessage Prelude.Double@
    * 'Proto.JsonFormatProto3_Fields.stringValue' @:: Lens' TestMessage Data.Text.Text@
    * 'Proto.JsonFormatProto3_Fields.bytesValue' @:: Lens' TestMessage Data.ByteString.ByteString@
    * 'Proto.JsonFormatProto3_Fields.enumValue' @:: Lens' TestMessage EnumType@
    * 'Proto.JsonFormatProto3_Fields.messageValue' @:: Lens' TestMessage MessageType@
    * 'Proto.JsonFormatProto3_Fields.maybe'messageValue' @:: Lens' TestMessage (Prelude.Maybe MessageType)@
    * 'Proto.JsonFormatProto3_Fields.repeatedBoolValue' @:: Lens' TestMessage [Prelude.Bool]@
    * 'Proto.JsonFormatProto3_Fields.repeatedInt32Value' @:: Lens' TestMessage [Data.Int.Int32]@
    * 'Proto.JsonFormatProto3_Fields.repeatedInt64Value' @:: Lens' TestMessage [Data.Int.Int64]@
    * 'Proto.JsonFormatProto3_Fields.repeatedUint32Value' @:: Lens' TestMessage [Data.Word.Word32]@
    * 'Proto.JsonFormatProto3_Fields.repeatedUint64Value' @:: Lens' TestMessage [Data.Word.Word64]@
    * 'Proto.JsonFormatProto3_Fields.repeatedFloatValue' @:: Lens' TestMessage [Prelude.Float]@
    * 'Proto.JsonFormatProto3_Fields.repeatedDoubleValue' @:: Lens' TestMessage [Prelude.Double]@
    * 'Proto.JsonFormatProto3_Fields.repeatedStringValue' @:: Lens' TestMessage [Data.Text.Text]@
    * 'Proto.JsonFormatProto3_Fields.repeatedBytesValue' @:: Lens' TestMessage [Data.ByteString.ByteString]@
    * 'Proto.JsonFormatProto3_Fields.repeatedEnumValue' @:: Lens' TestMessage [EnumType]@
    * 'Proto.JsonFormatProto3_Fields.repeatedMessageValue' @:: Lens' TestMessage [MessageType]@
 -}
data TestMessage = TestMessage{_TestMessage'boolValue ::
                               !Prelude.Bool,
                               _TestMessage'int32Value :: !Data.Int.Int32,
                               _TestMessage'int64Value :: !Data.Int.Int64,
                               _TestMessage'uint32Value :: !Data.Word.Word32,
                               _TestMessage'uint64Value :: !Data.Word.Word64,
                               _TestMessage'floatValue :: !Prelude.Float,
                               _TestMessage'doubleValue :: !Prelude.Double,
                               _TestMessage'stringValue :: !Data.Text.Text,
                               _TestMessage'bytesValue :: !Data.ByteString.ByteString,
                               _TestMessage'enumValue :: !EnumType,
                               _TestMessage'messageValue :: !(Prelude.Maybe MessageType),
                               _TestMessage'repeatedBoolValue :: ![Prelude.Bool],
                               _TestMessage'repeatedInt32Value :: ![Data.Int.Int32],
                               _TestMessage'repeatedInt64Value :: ![Data.Int.Int64],
                               _TestMessage'repeatedUint32Value :: ![Data.Word.Word32],
                               _TestMessage'repeatedUint64Value :: ![Data.Word.Word64],
                               _TestMessage'repeatedFloatValue :: ![Prelude.Float],
                               _TestMessage'repeatedDoubleValue :: ![Prelude.Double],
                               _TestMessage'repeatedStringValue :: ![Data.Text.Text],
                               _TestMessage'repeatedBytesValue :: ![Data.ByteString.ByteString],
                               _TestMessage'repeatedEnumValue :: ![EnumType],
                               _TestMessage'repeatedMessageValue :: ![MessageType],
                               _TestMessage'_unknownFields :: !Data.ProtoLens.FieldSet}
                     deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f TestMessage x a, a ~ b) =>
         Lens.Labels.HasLens f TestMessage TestMessage x a b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f TestMessage "boolValue" (Prelude.Bool)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TestMessage'boolValue
                 (\ x__ y__ -> x__{_TestMessage'boolValue = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f TestMessage "int32Value" (Data.Int.Int32)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TestMessage'int32Value
                 (\ x__ y__ -> x__{_TestMessage'int32Value = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f TestMessage "int64Value" (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TestMessage'int64Value
                 (\ x__ y__ -> x__{_TestMessage'int64Value = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f TestMessage "uint32Value" (Data.Word.Word32)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TestMessage'uint32Value
                 (\ x__ y__ -> x__{_TestMessage'uint32Value = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f TestMessage "uint64Value" (Data.Word.Word64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TestMessage'uint64Value
                 (\ x__ y__ -> x__{_TestMessage'uint64Value = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f TestMessage "floatValue" (Prelude.Float)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TestMessage'floatValue
                 (\ x__ y__ -> x__{_TestMessage'floatValue = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f TestMessage "doubleValue" (Prelude.Double)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TestMessage'doubleValue
                 (\ x__ y__ -> x__{_TestMessage'doubleValue = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f TestMessage "stringValue" (Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TestMessage'stringValue
                 (\ x__ y__ -> x__{_TestMessage'stringValue = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f TestMessage "bytesValue"
           (Data.ByteString.ByteString)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TestMessage'bytesValue
                 (\ x__ y__ -> x__{_TestMessage'bytesValue = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f TestMessage "enumValue" (EnumType)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TestMessage'enumValue
                 (\ x__ y__ -> x__{_TestMessage'enumValue = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f TestMessage "messageValue" (MessageType)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TestMessage'messageValue
                 (\ x__ y__ -> x__{_TestMessage'messageValue = y__}))
              (Data.ProtoLens.maybeLens Data.Default.Class.def)
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f TestMessage "maybe'messageValue"
           (Prelude.Maybe MessageType)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TestMessage'messageValue
                 (\ x__ y__ -> x__{_TestMessage'messageValue = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f TestMessage "repeatedBoolValue"
           ([Prelude.Bool])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TestMessage'repeatedBoolValue
                 (\ x__ y__ -> x__{_TestMessage'repeatedBoolValue = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f TestMessage "repeatedInt32Value"
           ([Data.Int.Int32])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TestMessage'repeatedInt32Value
                 (\ x__ y__ -> x__{_TestMessage'repeatedInt32Value = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f TestMessage "repeatedInt64Value"
           ([Data.Int.Int64])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TestMessage'repeatedInt64Value
                 (\ x__ y__ -> x__{_TestMessage'repeatedInt64Value = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f TestMessage "repeatedUint32Value"
           ([Data.Word.Word32])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TestMessage'repeatedUint32Value
                 (\ x__ y__ -> x__{_TestMessage'repeatedUint32Value = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f TestMessage "repeatedUint64Value"
           ([Data.Word.Word64])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TestMessage'repeatedUint64Value
                 (\ x__ y__ -> x__{_TestMessage'repeatedUint64Value = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f TestMessage "repeatedFloatValue"
           ([Prelude.Float])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TestMessage'repeatedFloatValue
                 (\ x__ y__ -> x__{_TestMessage'repeatedFloatValue = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f TestMessage "repeatedDoubleValue"
           ([Prelude.Double])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TestMessage'repeatedDoubleValue
                 (\ x__ y__ -> x__{_TestMessage'repeatedDoubleValue = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f TestMessage "repeatedStringValue"
           ([Data.Text.Text])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TestMessage'repeatedStringValue
                 (\ x__ y__ -> x__{_TestMessage'repeatedStringValue = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f TestMessage "repeatedBytesValue"
           ([Data.ByteString.ByteString])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TestMessage'repeatedBytesValue
                 (\ x__ y__ -> x__{_TestMessage'repeatedBytesValue = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f TestMessage "repeatedEnumValue" ([EnumType])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TestMessage'repeatedEnumValue
                 (\ x__ y__ -> x__{_TestMessage'repeatedEnumValue = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f TestMessage "repeatedMessageValue"
           ([MessageType])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TestMessage'repeatedMessageValue
                 (\ x__ y__ -> x__{_TestMessage'repeatedMessageValue = y__}))
              Prelude.id
instance Data.Default.Class.Default TestMessage where
        def
          = TestMessage{_TestMessage'boolValue = Data.ProtoLens.fieldDefault,
                        _TestMessage'int32Value = Data.ProtoLens.fieldDefault,
                        _TestMessage'int64Value = Data.ProtoLens.fieldDefault,
                        _TestMessage'uint32Value = Data.ProtoLens.fieldDefault,
                        _TestMessage'uint64Value = Data.ProtoLens.fieldDefault,
                        _TestMessage'floatValue = Data.ProtoLens.fieldDefault,
                        _TestMessage'doubleValue = Data.ProtoLens.fieldDefault,
                        _TestMessage'stringValue = Data.ProtoLens.fieldDefault,
                        _TestMessage'bytesValue = Data.ProtoLens.fieldDefault,
                        _TestMessage'enumValue = Data.Default.Class.def,
                        _TestMessage'messageValue = Prelude.Nothing,
                        _TestMessage'repeatedBoolValue = [],
                        _TestMessage'repeatedInt32Value = [],
                        _TestMessage'repeatedInt64Value = [],
                        _TestMessage'repeatedUint32Value = [],
                        _TestMessage'repeatedUint64Value = [],
                        _TestMessage'repeatedFloatValue = [],
                        _TestMessage'repeatedDoubleValue = [],
                        _TestMessage'repeatedStringValue = [],
                        _TestMessage'repeatedBytesValue = [],
                        _TestMessage'repeatedEnumValue = [],
                        _TestMessage'repeatedMessageValue = [],
                        _TestMessage'_unknownFields = ([])}
instance Data.ProtoLens.Message TestMessage where
        messageName _ = Data.Text.pack "proto3.TestMessage"
        fieldsByTag
          = let boolValue__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "bool_value"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                         Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "boolValue")))
                      :: Data.ProtoLens.FieldDescriptor TestMessage
                int32Value__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "int32_value"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "int32Value")))
                      :: Data.ProtoLens.FieldDescriptor TestMessage
                int64Value__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "int64_value"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "int64Value")))
                      :: Data.ProtoLens.FieldDescriptor TestMessage
                uint32Value__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "uint32_value"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "uint32Value")))
                      :: Data.ProtoLens.FieldDescriptor TestMessage
                uint64Value__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "uint64_value"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "uint64Value")))
                      :: Data.ProtoLens.FieldDescriptor TestMessage
                floatValue__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "float_value"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.FloatField ::
                         Data.ProtoLens.FieldTypeDescriptor Prelude.Float)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "floatValue")))
                      :: Data.ProtoLens.FieldDescriptor TestMessage
                doubleValue__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "double_value"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.DoubleField ::
                         Data.ProtoLens.FieldTypeDescriptor Prelude.Double)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "doubleValue")))
                      :: Data.ProtoLens.FieldDescriptor TestMessage
                stringValue__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "string_value"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "stringValue")))
                      :: Data.ProtoLens.FieldDescriptor TestMessage
                bytesValue__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "bytes_value"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "bytesValue")))
                      :: Data.ProtoLens.FieldDescriptor TestMessage
                enumValue__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "enum_value"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                         Data.ProtoLens.FieldTypeDescriptor EnumType)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "enumValue")))
                      :: Data.ProtoLens.FieldDescriptor TestMessage
                messageValue__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "message_value"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor MessageType)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "maybe'messageValue")))
                      :: Data.ProtoLens.FieldDescriptor TestMessage
                repeatedBoolValue__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "repeated_bool_value"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                         Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Packed
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "repeatedBoolValue")))
                      :: Data.ProtoLens.FieldDescriptor TestMessage
                repeatedInt32Value__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "repeated_int32_value"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Packed
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "repeatedInt32Value")))
                      :: Data.ProtoLens.FieldDescriptor TestMessage
                repeatedInt64Value__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "repeated_int64_value"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Packed
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "repeatedInt64Value")))
                      :: Data.ProtoLens.FieldDescriptor TestMessage
                repeatedUint32Value__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "repeated_uint32_value"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Packed
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "repeatedUint32Value")))
                      :: Data.ProtoLens.FieldDescriptor TestMessage
                repeatedUint64Value__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "repeated_uint64_value"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Packed
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "repeatedUint64Value")))
                      :: Data.ProtoLens.FieldDescriptor TestMessage
                repeatedFloatValue__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "repeated_float_value"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.FloatField ::
                         Data.ProtoLens.FieldTypeDescriptor Prelude.Float)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Packed
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "repeatedFloatValue")))
                      :: Data.ProtoLens.FieldDescriptor TestMessage
                repeatedDoubleValue__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "repeated_double_value"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.DoubleField ::
                         Data.ProtoLens.FieldTypeDescriptor Prelude.Double)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Packed
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "repeatedDoubleValue")))
                      :: Data.ProtoLens.FieldDescriptor TestMessage
                repeatedStringValue__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "repeated_string_value"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "repeatedStringValue")))
                      :: Data.ProtoLens.FieldDescriptor TestMessage
                repeatedBytesValue__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "repeated_bytes_value"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "repeatedBytesValue")))
                      :: Data.ProtoLens.FieldDescriptor TestMessage
                repeatedEnumValue__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "repeated_enum_value"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                         Data.ProtoLens.FieldTypeDescriptor EnumType)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Packed
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "repeatedEnumValue")))
                      :: Data.ProtoLens.FieldDescriptor TestMessage
                repeatedMessageValue__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "repeated_message_value"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor MessageType)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "repeatedMessageValue")))
                      :: Data.ProtoLens.FieldDescriptor TestMessage
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, boolValue__field_descriptor),
                 (Data.ProtoLens.Tag 2, int32Value__field_descriptor),
                 (Data.ProtoLens.Tag 3, int64Value__field_descriptor),
                 (Data.ProtoLens.Tag 4, uint32Value__field_descriptor),
                 (Data.ProtoLens.Tag 5, uint64Value__field_descriptor),
                 (Data.ProtoLens.Tag 6, floatValue__field_descriptor),
                 (Data.ProtoLens.Tag 7, doubleValue__field_descriptor),
                 (Data.ProtoLens.Tag 8, stringValue__field_descriptor),
                 (Data.ProtoLens.Tag 9, bytesValue__field_descriptor),
                 (Data.ProtoLens.Tag 10, enumValue__field_descriptor),
                 (Data.ProtoLens.Tag 11, messageValue__field_descriptor),
                 (Data.ProtoLens.Tag 21, repeatedBoolValue__field_descriptor),
                 (Data.ProtoLens.Tag 22, repeatedInt32Value__field_descriptor),
                 (Data.ProtoLens.Tag 23, repeatedInt64Value__field_descriptor),
                 (Data.ProtoLens.Tag 24, repeatedUint32Value__field_descriptor),
                 (Data.ProtoLens.Tag 25, repeatedUint64Value__field_descriptor),
                 (Data.ProtoLens.Tag 26, repeatedFloatValue__field_descriptor),
                 (Data.ProtoLens.Tag 27, repeatedDoubleValue__field_descriptor),
                 (Data.ProtoLens.Tag 28, repeatedStringValue__field_descriptor),
                 (Data.ProtoLens.Tag 29, repeatedBytesValue__field_descriptor),
                 (Data.ProtoLens.Tag 30, repeatedEnumValue__field_descriptor),
                 (Data.ProtoLens.Tag 31, repeatedMessageValue__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _TestMessage'_unknownFields
              (\ x__ y__ -> x__{_TestMessage'_unknownFields = y__})
{- | Fields :

    * 'Proto.JsonFormatProto3_Fields.boolMap' @:: Lens' TestNestedMap (Data.Map.Map Prelude.Bool Data.Int.Int32)@
    * 'Proto.JsonFormatProto3_Fields.int32Map' @:: Lens' TestNestedMap (Data.Map.Map Data.Int.Int32 Data.Int.Int32)@
    * 'Proto.JsonFormatProto3_Fields.int64Map' @:: Lens' TestNestedMap (Data.Map.Map Data.Int.Int64 Data.Int.Int32)@
    * 'Proto.JsonFormatProto3_Fields.uint32Map' @:: Lens' TestNestedMap (Data.Map.Map Data.Word.Word32 Data.Int.Int32)@
    * 'Proto.JsonFormatProto3_Fields.uint64Map' @:: Lens' TestNestedMap (Data.Map.Map Data.Word.Word64 Data.Int.Int32)@
    * 'Proto.JsonFormatProto3_Fields.stringMap' @:: Lens' TestNestedMap (Data.Map.Map Data.Text.Text Data.Int.Int32)@
    * 'Proto.JsonFormatProto3_Fields.mapMap' @:: Lens' TestNestedMap (Data.Map.Map Data.Text.Text TestNestedMap)@
 -}
data TestNestedMap = TestNestedMap{_TestNestedMap'boolMap ::
                                   !(Data.Map.Map Prelude.Bool Data.Int.Int32),
                                   _TestNestedMap'int32Map ::
                                   !(Data.Map.Map Data.Int.Int32 Data.Int.Int32),
                                   _TestNestedMap'int64Map ::
                                   !(Data.Map.Map Data.Int.Int64 Data.Int.Int32),
                                   _TestNestedMap'uint32Map ::
                                   !(Data.Map.Map Data.Word.Word32 Data.Int.Int32),
                                   _TestNestedMap'uint64Map ::
                                   !(Data.Map.Map Data.Word.Word64 Data.Int.Int32),
                                   _TestNestedMap'stringMap ::
                                   !(Data.Map.Map Data.Text.Text Data.Int.Int32),
                                   _TestNestedMap'mapMap ::
                                   !(Data.Map.Map Data.Text.Text TestNestedMap),
                                   _TestNestedMap'_unknownFields :: !Data.ProtoLens.FieldSet}
                       deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f TestNestedMap x a, a ~ b) =>
         Lens.Labels.HasLens f TestNestedMap TestNestedMap x a b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f TestNestedMap "boolMap"
           (Data.Map.Map Prelude.Bool Data.Int.Int32)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TestNestedMap'boolMap
                 (\ x__ y__ -> x__{_TestNestedMap'boolMap = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f TestNestedMap "int32Map"
           (Data.Map.Map Data.Int.Int32 Data.Int.Int32)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TestNestedMap'int32Map
                 (\ x__ y__ -> x__{_TestNestedMap'int32Map = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f TestNestedMap "int64Map"
           (Data.Map.Map Data.Int.Int64 Data.Int.Int32)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TestNestedMap'int64Map
                 (\ x__ y__ -> x__{_TestNestedMap'int64Map = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f TestNestedMap "uint32Map"
           (Data.Map.Map Data.Word.Word32 Data.Int.Int32)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TestNestedMap'uint32Map
                 (\ x__ y__ -> x__{_TestNestedMap'uint32Map = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f TestNestedMap "uint64Map"
           (Data.Map.Map Data.Word.Word64 Data.Int.Int32)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TestNestedMap'uint64Map
                 (\ x__ y__ -> x__{_TestNestedMap'uint64Map = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f TestNestedMap "stringMap"
           (Data.Map.Map Data.Text.Text Data.Int.Int32)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TestNestedMap'stringMap
                 (\ x__ y__ -> x__{_TestNestedMap'stringMap = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f TestNestedMap "mapMap"
           (Data.Map.Map Data.Text.Text TestNestedMap)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TestNestedMap'mapMap
                 (\ x__ y__ -> x__{_TestNestedMap'mapMap = y__}))
              Prelude.id
instance Data.Default.Class.Default TestNestedMap where
        def
          = TestNestedMap{_TestNestedMap'boolMap = Data.Map.empty,
                          _TestNestedMap'int32Map = Data.Map.empty,
                          _TestNestedMap'int64Map = Data.Map.empty,
                          _TestNestedMap'uint32Map = Data.Map.empty,
                          _TestNestedMap'uint64Map = Data.Map.empty,
                          _TestNestedMap'stringMap = Data.Map.empty,
                          _TestNestedMap'mapMap = Data.Map.empty,
                          _TestNestedMap'_unknownFields = ([])}
instance Data.ProtoLens.Message TestNestedMap where
        messageName _ = Data.Text.pack "proto3.TestNestedMap"
        fieldsByTag
          = let boolMap__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "bool_map"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor TestNestedMap'BoolMapEntry)
                      (Data.ProtoLens.MapField
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "key"))
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "value"))
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "boolMap")))
                      :: Data.ProtoLens.FieldDescriptor TestNestedMap
                int32Map__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "int32_map"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor TestNestedMap'Int32MapEntry)
                      (Data.ProtoLens.MapField
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "key"))
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "value"))
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "int32Map")))
                      :: Data.ProtoLens.FieldDescriptor TestNestedMap
                int64Map__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "int64_map"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor TestNestedMap'Int64MapEntry)
                      (Data.ProtoLens.MapField
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "key"))
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "value"))
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "int64Map")))
                      :: Data.ProtoLens.FieldDescriptor TestNestedMap
                uint32Map__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "uint32_map"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor TestNestedMap'Uint32MapEntry)
                      (Data.ProtoLens.MapField
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "key"))
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "value"))
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "uint32Map")))
                      :: Data.ProtoLens.FieldDescriptor TestNestedMap
                uint64Map__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "uint64_map"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor TestNestedMap'Uint64MapEntry)
                      (Data.ProtoLens.MapField
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "key"))
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "value"))
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "uint64Map")))
                      :: Data.ProtoLens.FieldDescriptor TestNestedMap
                stringMap__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "string_map"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor TestNestedMap'StringMapEntry)
                      (Data.ProtoLens.MapField
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "key"))
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "value"))
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "stringMap")))
                      :: Data.ProtoLens.FieldDescriptor TestNestedMap
                mapMap__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "map_map"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor TestNestedMap'MapMapEntry)
                      (Data.ProtoLens.MapField
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "key"))
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "value"))
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "mapMap")))
                      :: Data.ProtoLens.FieldDescriptor TestNestedMap
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, boolMap__field_descriptor),
                 (Data.ProtoLens.Tag 2, int32Map__field_descriptor),
                 (Data.ProtoLens.Tag 3, int64Map__field_descriptor),
                 (Data.ProtoLens.Tag 4, uint32Map__field_descriptor),
                 (Data.ProtoLens.Tag 5, uint64Map__field_descriptor),
                 (Data.ProtoLens.Tag 6, stringMap__field_descriptor),
                 (Data.ProtoLens.Tag 7, mapMap__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _TestNestedMap'_unknownFields
              (\ x__ y__ -> x__{_TestNestedMap'_unknownFields = y__})
{- | Fields :

    * 'Proto.JsonFormatProto3_Fields.key' @:: Lens' TestNestedMap'BoolMapEntry Prelude.Bool@
    * 'Proto.JsonFormatProto3_Fields.value' @:: Lens' TestNestedMap'BoolMapEntry Data.Int.Int32@
 -}
data TestNestedMap'BoolMapEntry = TestNestedMap'BoolMapEntry{_TestNestedMap'BoolMapEntry'key
                                                             :: !Prelude.Bool,
                                                             _TestNestedMap'BoolMapEntry'value ::
                                                             !Data.Int.Int32,
                                                             _TestNestedMap'BoolMapEntry'_unknownFields
                                                             :: !Data.ProtoLens.FieldSet}
                                    deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f TestNestedMap'BoolMapEntry x a,
          a ~ b) =>
         Lens.Labels.HasLens f TestNestedMap'BoolMapEntry
           TestNestedMap'BoolMapEntry
           x
           a
           b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f TestNestedMap'BoolMapEntry "key"
           (Prelude.Bool)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TestNestedMap'BoolMapEntry'key
                 (\ x__ y__ -> x__{_TestNestedMap'BoolMapEntry'key = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f TestNestedMap'BoolMapEntry "value"
           (Data.Int.Int32)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TestNestedMap'BoolMapEntry'value
                 (\ x__ y__ -> x__{_TestNestedMap'BoolMapEntry'value = y__}))
              Prelude.id
instance Data.Default.Class.Default TestNestedMap'BoolMapEntry
         where
        def
          = TestNestedMap'BoolMapEntry{_TestNestedMap'BoolMapEntry'key =
                                         Data.ProtoLens.fieldDefault,
                                       _TestNestedMap'BoolMapEntry'value =
                                         Data.ProtoLens.fieldDefault,
                                       _TestNestedMap'BoolMapEntry'_unknownFields = ([])}
instance Data.ProtoLens.Message TestNestedMap'BoolMapEntry where
        messageName _ = Data.Text.pack "proto3.TestNestedMap.BoolMapEntry"
        fieldsByTag
          = let key__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "key"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                         Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "key")))
                      :: Data.ProtoLens.FieldDescriptor TestNestedMap'BoolMapEntry
                value__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "value"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "value")))
                      :: Data.ProtoLens.FieldDescriptor TestNestedMap'BoolMapEntry
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, key__field_descriptor),
                 (Data.ProtoLens.Tag 2, value__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens
              _TestNestedMap'BoolMapEntry'_unknownFields
              (\ x__ y__ ->
                 x__{_TestNestedMap'BoolMapEntry'_unknownFields = y__})
{- | Fields :

    * 'Proto.JsonFormatProto3_Fields.key' @:: Lens' TestNestedMap'Int32MapEntry Data.Int.Int32@
    * 'Proto.JsonFormatProto3_Fields.value' @:: Lens' TestNestedMap'Int32MapEntry Data.Int.Int32@
 -}
data TestNestedMap'Int32MapEntry = TestNestedMap'Int32MapEntry{_TestNestedMap'Int32MapEntry'key
                                                               :: !Data.Int.Int32,
                                                               _TestNestedMap'Int32MapEntry'value ::
                                                               !Data.Int.Int32,
                                                               _TestNestedMap'Int32MapEntry'_unknownFields
                                                               :: !Data.ProtoLens.FieldSet}
                                     deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f TestNestedMap'Int32MapEntry x a,
          a ~ b) =>
         Lens.Labels.HasLens f TestNestedMap'Int32MapEntry
           TestNestedMap'Int32MapEntry
           x
           a
           b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f TestNestedMap'Int32MapEntry "key"
           (Data.Int.Int32)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TestNestedMap'Int32MapEntry'key
                 (\ x__ y__ -> x__{_TestNestedMap'Int32MapEntry'key = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f TestNestedMap'Int32MapEntry "value"
           (Data.Int.Int32)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TestNestedMap'Int32MapEntry'value
                 (\ x__ y__ -> x__{_TestNestedMap'Int32MapEntry'value = y__}))
              Prelude.id
instance Data.Default.Class.Default TestNestedMap'Int32MapEntry
         where
        def
          = TestNestedMap'Int32MapEntry{_TestNestedMap'Int32MapEntry'key =
                                          Data.ProtoLens.fieldDefault,
                                        _TestNestedMap'Int32MapEntry'value =
                                          Data.ProtoLens.fieldDefault,
                                        _TestNestedMap'Int32MapEntry'_unknownFields = ([])}
instance Data.ProtoLens.Message TestNestedMap'Int32MapEntry where
        messageName _ = Data.Text.pack "proto3.TestNestedMap.Int32MapEntry"
        fieldsByTag
          = let key__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "key"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "key")))
                      :: Data.ProtoLens.FieldDescriptor TestNestedMap'Int32MapEntry
                value__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "value"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "value")))
                      :: Data.ProtoLens.FieldDescriptor TestNestedMap'Int32MapEntry
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, key__field_descriptor),
                 (Data.ProtoLens.Tag 2, value__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens
              _TestNestedMap'Int32MapEntry'_unknownFields
              (\ x__ y__ ->
                 x__{_TestNestedMap'Int32MapEntry'_unknownFields = y__})
{- | Fields :

    * 'Proto.JsonFormatProto3_Fields.key' @:: Lens' TestNestedMap'Int64MapEntry Data.Int.Int64@
    * 'Proto.JsonFormatProto3_Fields.value' @:: Lens' TestNestedMap'Int64MapEntry Data.Int.Int32@
 -}
data TestNestedMap'Int64MapEntry = TestNestedMap'Int64MapEntry{_TestNestedMap'Int64MapEntry'key
                                                               :: !Data.Int.Int64,
                                                               _TestNestedMap'Int64MapEntry'value ::
                                                               !Data.Int.Int32,
                                                               _TestNestedMap'Int64MapEntry'_unknownFields
                                                               :: !Data.ProtoLens.FieldSet}
                                     deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f TestNestedMap'Int64MapEntry x a,
          a ~ b) =>
         Lens.Labels.HasLens f TestNestedMap'Int64MapEntry
           TestNestedMap'Int64MapEntry
           x
           a
           b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f TestNestedMap'Int64MapEntry "key"
           (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TestNestedMap'Int64MapEntry'key
                 (\ x__ y__ -> x__{_TestNestedMap'Int64MapEntry'key = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f TestNestedMap'Int64MapEntry "value"
           (Data.Int.Int32)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TestNestedMap'Int64MapEntry'value
                 (\ x__ y__ -> x__{_TestNestedMap'Int64MapEntry'value = y__}))
              Prelude.id
instance Data.Default.Class.Default TestNestedMap'Int64MapEntry
         where
        def
          = TestNestedMap'Int64MapEntry{_TestNestedMap'Int64MapEntry'key =
                                          Data.ProtoLens.fieldDefault,
                                        _TestNestedMap'Int64MapEntry'value =
                                          Data.ProtoLens.fieldDefault,
                                        _TestNestedMap'Int64MapEntry'_unknownFields = ([])}
instance Data.ProtoLens.Message TestNestedMap'Int64MapEntry where
        messageName _ = Data.Text.pack "proto3.TestNestedMap.Int64MapEntry"
        fieldsByTag
          = let key__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "key"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "key")))
                      :: Data.ProtoLens.FieldDescriptor TestNestedMap'Int64MapEntry
                value__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "value"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "value")))
                      :: Data.ProtoLens.FieldDescriptor TestNestedMap'Int64MapEntry
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, key__field_descriptor),
                 (Data.ProtoLens.Tag 2, value__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens
              _TestNestedMap'Int64MapEntry'_unknownFields
              (\ x__ y__ ->
                 x__{_TestNestedMap'Int64MapEntry'_unknownFields = y__})
{- | Fields :

    * 'Proto.JsonFormatProto3_Fields.key' @:: Lens' TestNestedMap'MapMapEntry Data.Text.Text@
    * 'Proto.JsonFormatProto3_Fields.value' @:: Lens' TestNestedMap'MapMapEntry TestNestedMap@
    * 'Proto.JsonFormatProto3_Fields.maybe'value' @:: Lens' TestNestedMap'MapMapEntry (Prelude.Maybe TestNestedMap)@
 -}
data TestNestedMap'MapMapEntry = TestNestedMap'MapMapEntry{_TestNestedMap'MapMapEntry'key
                                                           :: !Data.Text.Text,
                                                           _TestNestedMap'MapMapEntry'value ::
                                                           !(Prelude.Maybe TestNestedMap),
                                                           _TestNestedMap'MapMapEntry'_unknownFields
                                                           :: !Data.ProtoLens.FieldSet}
                                   deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f TestNestedMap'MapMapEntry x a,
          a ~ b) =>
         Lens.Labels.HasLens f TestNestedMap'MapMapEntry
           TestNestedMap'MapMapEntry
           x
           a
           b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f TestNestedMap'MapMapEntry "key"
           (Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TestNestedMap'MapMapEntry'key
                 (\ x__ y__ -> x__{_TestNestedMap'MapMapEntry'key = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f TestNestedMap'MapMapEntry "value"
           (TestNestedMap)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TestNestedMap'MapMapEntry'value
                 (\ x__ y__ -> x__{_TestNestedMap'MapMapEntry'value = y__}))
              (Data.ProtoLens.maybeLens Data.Default.Class.def)
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f TestNestedMap'MapMapEntry "maybe'value"
           (Prelude.Maybe TestNestedMap)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TestNestedMap'MapMapEntry'value
                 (\ x__ y__ -> x__{_TestNestedMap'MapMapEntry'value = y__}))
              Prelude.id
instance Data.Default.Class.Default TestNestedMap'MapMapEntry where
        def
          = TestNestedMap'MapMapEntry{_TestNestedMap'MapMapEntry'key =
                                        Data.ProtoLens.fieldDefault,
                                      _TestNestedMap'MapMapEntry'value = Prelude.Nothing,
                                      _TestNestedMap'MapMapEntry'_unknownFields = ([])}
instance Data.ProtoLens.Message TestNestedMap'MapMapEntry where
        messageName _ = Data.Text.pack "proto3.TestNestedMap.MapMapEntry"
        fieldsByTag
          = let key__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "key"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "key")))
                      :: Data.ProtoLens.FieldDescriptor TestNestedMap'MapMapEntry
                value__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "value"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor TestNestedMap)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'value")))
                      :: Data.ProtoLens.FieldDescriptor TestNestedMap'MapMapEntry
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, key__field_descriptor),
                 (Data.ProtoLens.Tag 2, value__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens
              _TestNestedMap'MapMapEntry'_unknownFields
              (\ x__ y__ -> x__{_TestNestedMap'MapMapEntry'_unknownFields = y__})
{- | Fields :

    * 'Proto.JsonFormatProto3_Fields.key' @:: Lens' TestNestedMap'StringMapEntry Data.Text.Text@
    * 'Proto.JsonFormatProto3_Fields.value' @:: Lens' TestNestedMap'StringMapEntry Data.Int.Int32@
 -}
data TestNestedMap'StringMapEntry = TestNestedMap'StringMapEntry{_TestNestedMap'StringMapEntry'key
                                                                 :: !Data.Text.Text,
                                                                 _TestNestedMap'StringMapEntry'value
                                                                 :: !Data.Int.Int32,
                                                                 _TestNestedMap'StringMapEntry'_unknownFields
                                                                 :: !Data.ProtoLens.FieldSet}
                                      deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f TestNestedMap'StringMapEntry x a,
          a ~ b) =>
         Lens.Labels.HasLens f TestNestedMap'StringMapEntry
           TestNestedMap'StringMapEntry
           x
           a
           b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f TestNestedMap'StringMapEntry "key"
           (Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TestNestedMap'StringMapEntry'key
                 (\ x__ y__ -> x__{_TestNestedMap'StringMapEntry'key = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f TestNestedMap'StringMapEntry "value"
           (Data.Int.Int32)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TestNestedMap'StringMapEntry'value
                 (\ x__ y__ -> x__{_TestNestedMap'StringMapEntry'value = y__}))
              Prelude.id
instance Data.Default.Class.Default TestNestedMap'StringMapEntry
         where
        def
          = TestNestedMap'StringMapEntry{_TestNestedMap'StringMapEntry'key =
                                           Data.ProtoLens.fieldDefault,
                                         _TestNestedMap'StringMapEntry'value =
                                           Data.ProtoLens.fieldDefault,
                                         _TestNestedMap'StringMapEntry'_unknownFields = ([])}
instance Data.ProtoLens.Message TestNestedMap'StringMapEntry where
        messageName _
          = Data.Text.pack "proto3.TestNestedMap.StringMapEntry"
        fieldsByTag
          = let key__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "key"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "key")))
                      :: Data.ProtoLens.FieldDescriptor TestNestedMap'StringMapEntry
                value__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "value"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "value")))
                      :: Data.ProtoLens.FieldDescriptor TestNestedMap'StringMapEntry
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, key__field_descriptor),
                 (Data.ProtoLens.Tag 2, value__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens
              _TestNestedMap'StringMapEntry'_unknownFields
              (\ x__ y__ ->
                 x__{_TestNestedMap'StringMapEntry'_unknownFields = y__})
{- | Fields :

    * 'Proto.JsonFormatProto3_Fields.key' @:: Lens' TestNestedMap'Uint32MapEntry Data.Word.Word32@
    * 'Proto.JsonFormatProto3_Fields.value' @:: Lens' TestNestedMap'Uint32MapEntry Data.Int.Int32@
 -}
data TestNestedMap'Uint32MapEntry = TestNestedMap'Uint32MapEntry{_TestNestedMap'Uint32MapEntry'key
                                                                 :: !Data.Word.Word32,
                                                                 _TestNestedMap'Uint32MapEntry'value
                                                                 :: !Data.Int.Int32,
                                                                 _TestNestedMap'Uint32MapEntry'_unknownFields
                                                                 :: !Data.ProtoLens.FieldSet}
                                      deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f TestNestedMap'Uint32MapEntry x a,
          a ~ b) =>
         Lens.Labels.HasLens f TestNestedMap'Uint32MapEntry
           TestNestedMap'Uint32MapEntry
           x
           a
           b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f TestNestedMap'Uint32MapEntry "key"
           (Data.Word.Word32)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TestNestedMap'Uint32MapEntry'key
                 (\ x__ y__ -> x__{_TestNestedMap'Uint32MapEntry'key = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f TestNestedMap'Uint32MapEntry "value"
           (Data.Int.Int32)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TestNestedMap'Uint32MapEntry'value
                 (\ x__ y__ -> x__{_TestNestedMap'Uint32MapEntry'value = y__}))
              Prelude.id
instance Data.Default.Class.Default TestNestedMap'Uint32MapEntry
         where
        def
          = TestNestedMap'Uint32MapEntry{_TestNestedMap'Uint32MapEntry'key =
                                           Data.ProtoLens.fieldDefault,
                                         _TestNestedMap'Uint32MapEntry'value =
                                           Data.ProtoLens.fieldDefault,
                                         _TestNestedMap'Uint32MapEntry'_unknownFields = ([])}
instance Data.ProtoLens.Message TestNestedMap'Uint32MapEntry where
        messageName _
          = Data.Text.pack "proto3.TestNestedMap.Uint32MapEntry"
        fieldsByTag
          = let key__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "key"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "key")))
                      :: Data.ProtoLens.FieldDescriptor TestNestedMap'Uint32MapEntry
                value__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "value"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "value")))
                      :: Data.ProtoLens.FieldDescriptor TestNestedMap'Uint32MapEntry
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, key__field_descriptor),
                 (Data.ProtoLens.Tag 2, value__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens
              _TestNestedMap'Uint32MapEntry'_unknownFields
              (\ x__ y__ ->
                 x__{_TestNestedMap'Uint32MapEntry'_unknownFields = y__})
{- | Fields :

    * 'Proto.JsonFormatProto3_Fields.key' @:: Lens' TestNestedMap'Uint64MapEntry Data.Word.Word64@
    * 'Proto.JsonFormatProto3_Fields.value' @:: Lens' TestNestedMap'Uint64MapEntry Data.Int.Int32@
 -}
data TestNestedMap'Uint64MapEntry = TestNestedMap'Uint64MapEntry{_TestNestedMap'Uint64MapEntry'key
                                                                 :: !Data.Word.Word64,
                                                                 _TestNestedMap'Uint64MapEntry'value
                                                                 :: !Data.Int.Int32,
                                                                 _TestNestedMap'Uint64MapEntry'_unknownFields
                                                                 :: !Data.ProtoLens.FieldSet}
                                      deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f TestNestedMap'Uint64MapEntry x a,
          a ~ b) =>
         Lens.Labels.HasLens f TestNestedMap'Uint64MapEntry
           TestNestedMap'Uint64MapEntry
           x
           a
           b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f TestNestedMap'Uint64MapEntry "key"
           (Data.Word.Word64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TestNestedMap'Uint64MapEntry'key
                 (\ x__ y__ -> x__{_TestNestedMap'Uint64MapEntry'key = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f TestNestedMap'Uint64MapEntry "value"
           (Data.Int.Int32)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TestNestedMap'Uint64MapEntry'value
                 (\ x__ y__ -> x__{_TestNestedMap'Uint64MapEntry'value = y__}))
              Prelude.id
instance Data.Default.Class.Default TestNestedMap'Uint64MapEntry
         where
        def
          = TestNestedMap'Uint64MapEntry{_TestNestedMap'Uint64MapEntry'key =
                                           Data.ProtoLens.fieldDefault,
                                         _TestNestedMap'Uint64MapEntry'value =
                                           Data.ProtoLens.fieldDefault,
                                         _TestNestedMap'Uint64MapEntry'_unknownFields = ([])}
instance Data.ProtoLens.Message TestNestedMap'Uint64MapEntry where
        messageName _
          = Data.Text.pack "proto3.TestNestedMap.Uint64MapEntry"
        fieldsByTag
          = let key__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "key"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "key")))
                      :: Data.ProtoLens.FieldDescriptor TestNestedMap'Uint64MapEntry
                value__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "value"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "value")))
                      :: Data.ProtoLens.FieldDescriptor TestNestedMap'Uint64MapEntry
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, key__field_descriptor),
                 (Data.ProtoLens.Tag 2, value__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens
              _TestNestedMap'Uint64MapEntry'_unknownFields
              (\ x__ y__ ->
                 x__{_TestNestedMap'Uint64MapEntry'_unknownFields = y__})
{- | Fields :

    * 'Proto.JsonFormatProto3_Fields.maybe'oneofValue' @:: Lens' TestOneof (Prelude.Maybe TestOneof'OneofValue)@
    * 'Proto.JsonFormatProto3_Fields.maybe'oneofInt32Value' @:: Lens' TestOneof (Prelude.Maybe Data.Int.Int32)@
    * 'Proto.JsonFormatProto3_Fields.oneofInt32Value' @:: Lens' TestOneof Data.Int.Int32@
    * 'Proto.JsonFormatProto3_Fields.maybe'oneofStringValue' @:: Lens' TestOneof (Prelude.Maybe Data.Text.Text)@
    * 'Proto.JsonFormatProto3_Fields.oneofStringValue' @:: Lens' TestOneof Data.Text.Text@
    * 'Proto.JsonFormatProto3_Fields.maybe'oneofBytesValue' @:: Lens' TestOneof (Prelude.Maybe Data.ByteString.ByteString)@
    * 'Proto.JsonFormatProto3_Fields.oneofBytesValue' @:: Lens' TestOneof Data.ByteString.ByteString@
    * 'Proto.JsonFormatProto3_Fields.maybe'oneofEnumValue' @:: Lens' TestOneof (Prelude.Maybe EnumType)@
    * 'Proto.JsonFormatProto3_Fields.oneofEnumValue' @:: Lens' TestOneof EnumType@
    * 'Proto.JsonFormatProto3_Fields.maybe'oneofMessageValue' @:: Lens' TestOneof (Prelude.Maybe MessageType)@
    * 'Proto.JsonFormatProto3_Fields.oneofMessageValue' @:: Lens' TestOneof MessageType@
 -}
data TestOneof = TestOneof{_TestOneof'oneofValue ::
                           !(Prelude.Maybe TestOneof'OneofValue),
                           _TestOneof'_unknownFields :: !Data.ProtoLens.FieldSet}
                   deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
data TestOneof'OneofValue = TestOneof'OneofInt32Value !Data.Int.Int32
                          | TestOneof'OneofStringValue !Data.Text.Text
                          | TestOneof'OneofBytesValue !Data.ByteString.ByteString
                          | TestOneof'OneofEnumValue !EnumType
                          | TestOneof'OneofMessageValue !MessageType
                              deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f TestOneof x a, a ~ b) =>
         Lens.Labels.HasLens f TestOneof TestOneof x a b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f TestOneof "maybe'oneofValue"
           (Prelude.Maybe TestOneof'OneofValue)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TestOneof'oneofValue
                 (\ x__ y__ -> x__{_TestOneof'oneofValue = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f TestOneof "maybe'oneofInt32Value"
           (Prelude.Maybe Data.Int.Int32)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TestOneof'oneofValue
                 (\ x__ y__ -> x__{_TestOneof'oneofValue = y__}))
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (TestOneof'OneofInt32Value x__val) -> Prelude.Just
                                                                             x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap TestOneof'OneofInt32Value y__))
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f TestOneof "oneofInt32Value" (Data.Int.Int32)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TestOneof'oneofValue
                 (\ x__ y__ -> x__{_TestOneof'oneofValue = y__}))
              ((Prelude..)
                 (Lens.Family2.Unchecked.lens
                    (\ x__ ->
                       case x__ of
                           Prelude.Just (TestOneof'OneofInt32Value x__val) -> Prelude.Just
                                                                                x__val
                           _otherwise -> Prelude.Nothing)
                    (\ _ y__ -> Prelude.fmap TestOneof'OneofInt32Value y__))
                 (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f TestOneof "maybe'oneofStringValue"
           (Prelude.Maybe Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TestOneof'oneofValue
                 (\ x__ y__ -> x__{_TestOneof'oneofValue = y__}))
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (TestOneof'OneofStringValue x__val) -> Prelude.Just
                                                                              x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap TestOneof'OneofStringValue y__))
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f TestOneof "oneofStringValue"
           (Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TestOneof'oneofValue
                 (\ x__ y__ -> x__{_TestOneof'oneofValue = y__}))
              ((Prelude..)
                 (Lens.Family2.Unchecked.lens
                    (\ x__ ->
                       case x__ of
                           Prelude.Just (TestOneof'OneofStringValue x__val) -> Prelude.Just
                                                                                 x__val
                           _otherwise -> Prelude.Nothing)
                    (\ _ y__ -> Prelude.fmap TestOneof'OneofStringValue y__))
                 (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f TestOneof "maybe'oneofBytesValue"
           (Prelude.Maybe Data.ByteString.ByteString)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TestOneof'oneofValue
                 (\ x__ y__ -> x__{_TestOneof'oneofValue = y__}))
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (TestOneof'OneofBytesValue x__val) -> Prelude.Just
                                                                             x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap TestOneof'OneofBytesValue y__))
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f TestOneof "oneofBytesValue"
           (Data.ByteString.ByteString)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TestOneof'oneofValue
                 (\ x__ y__ -> x__{_TestOneof'oneofValue = y__}))
              ((Prelude..)
                 (Lens.Family2.Unchecked.lens
                    (\ x__ ->
                       case x__ of
                           Prelude.Just (TestOneof'OneofBytesValue x__val) -> Prelude.Just
                                                                                x__val
                           _otherwise -> Prelude.Nothing)
                    (\ _ y__ -> Prelude.fmap TestOneof'OneofBytesValue y__))
                 (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f TestOneof "maybe'oneofEnumValue"
           (Prelude.Maybe EnumType)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TestOneof'oneofValue
                 (\ x__ y__ -> x__{_TestOneof'oneofValue = y__}))
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (TestOneof'OneofEnumValue x__val) -> Prelude.Just
                                                                            x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap TestOneof'OneofEnumValue y__))
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f TestOneof "oneofEnumValue" (EnumType)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TestOneof'oneofValue
                 (\ x__ y__ -> x__{_TestOneof'oneofValue = y__}))
              ((Prelude..)
                 (Lens.Family2.Unchecked.lens
                    (\ x__ ->
                       case x__ of
                           Prelude.Just (TestOneof'OneofEnumValue x__val) -> Prelude.Just
                                                                               x__val
                           _otherwise -> Prelude.Nothing)
                    (\ _ y__ -> Prelude.fmap TestOneof'OneofEnumValue y__))
                 (Data.ProtoLens.maybeLens Data.Default.Class.def))
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f TestOneof "maybe'oneofMessageValue"
           (Prelude.Maybe MessageType)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TestOneof'oneofValue
                 (\ x__ y__ -> x__{_TestOneof'oneofValue = y__}))
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (TestOneof'OneofMessageValue x__val) -> Prelude.Just
                                                                               x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap TestOneof'OneofMessageValue y__))
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f TestOneof "oneofMessageValue" (MessageType)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TestOneof'oneofValue
                 (\ x__ y__ -> x__{_TestOneof'oneofValue = y__}))
              ((Prelude..)
                 (Lens.Family2.Unchecked.lens
                    (\ x__ ->
                       case x__ of
                           Prelude.Just (TestOneof'OneofMessageValue x__val) -> Prelude.Just
                                                                                  x__val
                           _otherwise -> Prelude.Nothing)
                    (\ _ y__ -> Prelude.fmap TestOneof'OneofMessageValue y__))
                 (Data.ProtoLens.maybeLens Data.Default.Class.def))
instance Data.Default.Class.Default TestOneof where
        def
          = TestOneof{_TestOneof'oneofValue = Prelude.Nothing,
                      _TestOneof'_unknownFields = ([])}
instance Data.ProtoLens.Message TestOneof where
        messageName _ = Data.Text.pack "proto3.TestOneof"
        fieldsByTag
          = let oneofInt32Value__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "oneof_int32_value"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "maybe'oneofInt32Value")))
                      :: Data.ProtoLens.FieldDescriptor TestOneof
                oneofStringValue__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "oneof_string_value"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "maybe'oneofStringValue")))
                      :: Data.ProtoLens.FieldDescriptor TestOneof
                oneofBytesValue__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "oneof_bytes_value"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "maybe'oneofBytesValue")))
                      :: Data.ProtoLens.FieldDescriptor TestOneof
                oneofEnumValue__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "oneof_enum_value"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                         Data.ProtoLens.FieldTypeDescriptor EnumType)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "maybe'oneofEnumValue")))
                      :: Data.ProtoLens.FieldDescriptor TestOneof
                oneofMessageValue__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "oneof_message_value"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor MessageType)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "maybe'oneofMessageValue")))
                      :: Data.ProtoLens.FieldDescriptor TestOneof
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, oneofInt32Value__field_descriptor),
                 (Data.ProtoLens.Tag 2, oneofStringValue__field_descriptor),
                 (Data.ProtoLens.Tag 3, oneofBytesValue__field_descriptor),
                 (Data.ProtoLens.Tag 4, oneofEnumValue__field_descriptor),
                 (Data.ProtoLens.Tag 5, oneofMessageValue__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _TestOneof'_unknownFields
              (\ x__ y__ -> x__{_TestOneof'_unknownFields = y__})
_TestOneof'OneofInt32Value ::
                           Lens.Labels.Prism.Prism' TestOneof'OneofValue Data.Int.Int32
_TestOneof'OneofInt32Value
  = Lens.Labels.Prism.prism' TestOneof'OneofInt32Value
      (\ p__ ->
         case p__ of
             TestOneof'OneofInt32Value p__val -> Prelude.Just p__val
             _otherwise -> Prelude.Nothing)
_TestOneof'OneofStringValue ::
                            Lens.Labels.Prism.Prism' TestOneof'OneofValue Data.Text.Text
_TestOneof'OneofStringValue
  = Lens.Labels.Prism.prism' TestOneof'OneofStringValue
      (\ p__ ->
         case p__ of
             TestOneof'OneofStringValue p__val -> Prelude.Just p__val
             _otherwise -> Prelude.Nothing)
_TestOneof'OneofBytesValue ::
                           Lens.Labels.Prism.Prism' TestOneof'OneofValue
                             Data.ByteString.ByteString
_TestOneof'OneofBytesValue
  = Lens.Labels.Prism.prism' TestOneof'OneofBytesValue
      (\ p__ ->
         case p__ of
             TestOneof'OneofBytesValue p__val -> Prelude.Just p__val
             _otherwise -> Prelude.Nothing)
_TestOneof'OneofEnumValue ::
                          Lens.Labels.Prism.Prism' TestOneof'OneofValue EnumType
_TestOneof'OneofEnumValue
  = Lens.Labels.Prism.prism' TestOneof'OneofEnumValue
      (\ p__ ->
         case p__ of
             TestOneof'OneofEnumValue p__val -> Prelude.Just p__val
             _otherwise -> Prelude.Nothing)
_TestOneof'OneofMessageValue ::
                             Lens.Labels.Prism.Prism' TestOneof'OneofValue MessageType
_TestOneof'OneofMessageValue
  = Lens.Labels.Prism.prism' TestOneof'OneofMessageValue
      (\ p__ ->
         case p__ of
             TestOneof'OneofMessageValue p__val -> Prelude.Just p__val
             _otherwise -> Prelude.Nothing)