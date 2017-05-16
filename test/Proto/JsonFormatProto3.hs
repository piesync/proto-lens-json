{- This file was auto-generated from json_format_proto3.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies,
  UndecidableInstances, MultiParamTypeClasses, FlexibleContexts,
  FlexibleInstances, PatternSynonyms, MagicHash #-}
{-# OPTIONS_GHC -fno-warn-unused-imports#-}
module Proto.JsonFormatProto3 where
import qualified Prelude
import qualified Data.Int
import qualified Data.Word
import qualified Data.ProtoLens.Reexport.Data.ProtoLens
       as Data.ProtoLens
import qualified
       Data.ProtoLens.Reexport.Data.ProtoLens.Message.Enum
       as Data.ProtoLens.Message.Enum
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
import qualified Data.ProtoLens.Reexport.Lens.Labels as Lens.Labels

data EnumType = FOO
              | BAR
              deriving (Prelude.Show, Prelude.Eq)

instance Data.Default.Class.Default EnumType where
        def = FOO

instance Data.ProtoLens.FieldDefault EnumType where
        fieldDefault = FOO

instance Data.ProtoLens.MessageEnum EnumType where
        maybeToEnum 0 = Prelude.Just FOO
        maybeToEnum 1 = Prelude.Just BAR
        maybeToEnum _ = Prelude.Nothing
        showEnum FOO = "FOO"
        showEnum BAR = "BAR"
        readEnum "FOO" = Prelude.Just FOO
        readEnum "BAR" = Prelude.Just BAR
        readEnum _ = Prelude.Nothing

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
        succ BAR
          = Prelude.error
              "EnumType.succ: bad argument BAR. This value would be out of bounds."
        succ FOO = BAR
        pred FOO
          = Prelude.error
              "EnumType.pred: bad argument FOO. This value would be out of bounds."
        pred BAR = FOO
        enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
        enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
        enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
        enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo

instance Prelude.Bounded EnumType where
        minBound = FOO
        maxBound = BAR

data MessageType = MessageType{_MessageType'value ::
                               !Data.Int.Int32}
                 deriving (Prelude.Show, Prelude.Eq)

instance (a ~ Data.Int.Int32, b ~ Data.Int.Int32,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "value" f MessageType MessageType a b
         where
        lensOf _
          = Lens.Family2.Unchecked.lens _MessageType'value
              (\ x__ y__ -> x__{_MessageType'value = y__})

instance Data.Default.Class.Default MessageType where
        def = MessageType{_MessageType'value = Data.ProtoLens.fieldDefault}

instance Data.ProtoLens.Message MessageType where
        descriptor
          = let value__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "value"
                      (Data.ProtoLens.Int32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional value)
                      :: Data.ProtoLens.FieldDescriptor MessageType
              in
              Data.ProtoLens.MessageDescriptor
                (Data.Map.fromList
                   [(Data.ProtoLens.Tag 1, value__field_descriptor)])
                (Data.Map.fromList [("value", value__field_descriptor)])

data TestMap = TestMap{_TestMap'boolMap ::
                       !(Data.Map.Map Prelude.Bool Data.Int.Int32),
                       _TestMap'int32Map :: !(Data.Map.Map Data.Int.Int32 Data.Int.Int32),
                       _TestMap'int64Map :: !(Data.Map.Map Data.Int.Int64 Data.Int.Int32),
                       _TestMap'uint32Map ::
                       !(Data.Map.Map Data.Word.Word32 Data.Int.Int32),
                       _TestMap'uint64Map ::
                       !(Data.Map.Map Data.Word.Word64 Data.Int.Int32),
                       _TestMap'stringMap ::
                       !(Data.Map.Map Data.Text.Text Data.Int.Int32)}
             deriving (Prelude.Show, Prelude.Eq)

instance (a ~ Data.Map.Map Prelude.Bool Data.Int.Int32,
          b ~ Data.Map.Map Prelude.Bool Data.Int.Int32, Prelude.Functor f) =>
         Lens.Labels.HasLens "boolMap" f TestMap TestMap a b
         where
        lensOf _
          = Lens.Family2.Unchecked.lens _TestMap'boolMap
              (\ x__ y__ -> x__{_TestMap'boolMap = y__})

instance (a ~ Data.Map.Map Data.Int.Int32 Data.Int.Int32,
          b ~ Data.Map.Map Data.Int.Int32 Data.Int.Int32,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "int32Map" f TestMap TestMap a b
         where
        lensOf _
          = Lens.Family2.Unchecked.lens _TestMap'int32Map
              (\ x__ y__ -> x__{_TestMap'int32Map = y__})

instance (a ~ Data.Map.Map Data.Int.Int64 Data.Int.Int32,
          b ~ Data.Map.Map Data.Int.Int64 Data.Int.Int32,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "int64Map" f TestMap TestMap a b
         where
        lensOf _
          = Lens.Family2.Unchecked.lens _TestMap'int64Map
              (\ x__ y__ -> x__{_TestMap'int64Map = y__})

instance (a ~ Data.Map.Map Data.Word.Word32 Data.Int.Int32,
          b ~ Data.Map.Map Data.Word.Word32 Data.Int.Int32,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "uint32Map" f TestMap TestMap a b
         where
        lensOf _
          = Lens.Family2.Unchecked.lens _TestMap'uint32Map
              (\ x__ y__ -> x__{_TestMap'uint32Map = y__})

instance (a ~ Data.Map.Map Data.Word.Word64 Data.Int.Int32,
          b ~ Data.Map.Map Data.Word.Word64 Data.Int.Int32,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "uint64Map" f TestMap TestMap a b
         where
        lensOf _
          = Lens.Family2.Unchecked.lens _TestMap'uint64Map
              (\ x__ y__ -> x__{_TestMap'uint64Map = y__})

instance (a ~ Data.Map.Map Data.Text.Text Data.Int.Int32,
          b ~ Data.Map.Map Data.Text.Text Data.Int.Int32,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "stringMap" f TestMap TestMap a b
         where
        lensOf _
          = Lens.Family2.Unchecked.lens _TestMap'stringMap
              (\ x__ y__ -> x__{_TestMap'stringMap = y__})

instance Data.Default.Class.Default TestMap where
        def
          = TestMap{_TestMap'boolMap = Data.Map.empty,
                    _TestMap'int32Map = Data.Map.empty,
                    _TestMap'int64Map = Data.Map.empty,
                    _TestMap'uint32Map = Data.Map.empty,
                    _TestMap'uint64Map = Data.Map.empty,
                    _TestMap'stringMap = Data.Map.empty}

instance Data.ProtoLens.Message TestMap where
        descriptor
          = let boolMap__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "bool_map"
                      (Data.ProtoLens.MessageField ::
                         Data.ProtoLens.FieldTypeDescriptor TestMap'BoolMapEntry)
                      (Data.ProtoLens.MapField key value boolMap)
                      :: Data.ProtoLens.FieldDescriptor TestMap
                int32Map__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "int32_map"
                      (Data.ProtoLens.MessageField ::
                         Data.ProtoLens.FieldTypeDescriptor TestMap'Int32MapEntry)
                      (Data.ProtoLens.MapField key value int32Map)
                      :: Data.ProtoLens.FieldDescriptor TestMap
                int64Map__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "int64_map"
                      (Data.ProtoLens.MessageField ::
                         Data.ProtoLens.FieldTypeDescriptor TestMap'Int64MapEntry)
                      (Data.ProtoLens.MapField key value int64Map)
                      :: Data.ProtoLens.FieldDescriptor TestMap
                uint32Map__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "uint32_map"
                      (Data.ProtoLens.MessageField ::
                         Data.ProtoLens.FieldTypeDescriptor TestMap'Uint32MapEntry)
                      (Data.ProtoLens.MapField key value uint32Map)
                      :: Data.ProtoLens.FieldDescriptor TestMap
                uint64Map__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "uint64_map"
                      (Data.ProtoLens.MessageField ::
                         Data.ProtoLens.FieldTypeDescriptor TestMap'Uint64MapEntry)
                      (Data.ProtoLens.MapField key value uint64Map)
                      :: Data.ProtoLens.FieldDescriptor TestMap
                stringMap__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "string_map"
                      (Data.ProtoLens.MessageField ::
                         Data.ProtoLens.FieldTypeDescriptor TestMap'StringMapEntry)
                      (Data.ProtoLens.MapField key value stringMap)
                      :: Data.ProtoLens.FieldDescriptor TestMap
              in
              Data.ProtoLens.MessageDescriptor
                (Data.Map.fromList
                   [(Data.ProtoLens.Tag 1, boolMap__field_descriptor),
                    (Data.ProtoLens.Tag 2, int32Map__field_descriptor),
                    (Data.ProtoLens.Tag 3, int64Map__field_descriptor),
                    (Data.ProtoLens.Tag 4, uint32Map__field_descriptor),
                    (Data.ProtoLens.Tag 5, uint64Map__field_descriptor),
                    (Data.ProtoLens.Tag 6, stringMap__field_descriptor)])
                (Data.Map.fromList
                   [("bool_map", boolMap__field_descriptor),
                    ("int32_map", int32Map__field_descriptor),
                    ("int64_map", int64Map__field_descriptor),
                    ("uint32_map", uint32Map__field_descriptor),
                    ("uint64_map", uint64Map__field_descriptor),
                    ("string_map", stringMap__field_descriptor)])

data TestMap'BoolMapEntry = TestMap'BoolMapEntry{_TestMap'BoolMapEntry'key
                                                 :: !Prelude.Bool,
                                                 _TestMap'BoolMapEntry'value :: !Data.Int.Int32}
                          deriving (Prelude.Show, Prelude.Eq)

instance (a ~ Prelude.Bool, b ~ Prelude.Bool, Prelude.Functor f) =>
         Lens.Labels.HasLens "key" f TestMap'BoolMapEntry
           TestMap'BoolMapEntry
           a
           b
         where
        lensOf _
          = Lens.Family2.Unchecked.lens _TestMap'BoolMapEntry'key
              (\ x__ y__ -> x__{_TestMap'BoolMapEntry'key = y__})

instance (a ~ Data.Int.Int32, b ~ Data.Int.Int32,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "value" f TestMap'BoolMapEntry
           TestMap'BoolMapEntry
           a
           b
         where
        lensOf _
          = Lens.Family2.Unchecked.lens _TestMap'BoolMapEntry'value
              (\ x__ y__ -> x__{_TestMap'BoolMapEntry'value = y__})

instance Data.Default.Class.Default TestMap'BoolMapEntry where
        def
          = TestMap'BoolMapEntry{_TestMap'BoolMapEntry'key =
                                   Data.ProtoLens.fieldDefault,
                                 _TestMap'BoolMapEntry'value = Data.ProtoLens.fieldDefault}

instance Data.ProtoLens.Message TestMap'BoolMapEntry where
        descriptor
          = let key__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "key"
                      (Data.ProtoLens.BoolField ::
                         Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional key)
                      :: Data.ProtoLens.FieldDescriptor TestMap'BoolMapEntry
                value__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "value"
                      (Data.ProtoLens.Int32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional value)
                      :: Data.ProtoLens.FieldDescriptor TestMap'BoolMapEntry
              in
              Data.ProtoLens.MessageDescriptor
                (Data.Map.fromList
                   [(Data.ProtoLens.Tag 1, key__field_descriptor),
                    (Data.ProtoLens.Tag 2, value__field_descriptor)])
                (Data.Map.fromList
                   [("key", key__field_descriptor),
                    ("value", value__field_descriptor)])

data TestMap'Int32MapEntry = TestMap'Int32MapEntry{_TestMap'Int32MapEntry'key
                                                   :: !Data.Int.Int32,
                                                   _TestMap'Int32MapEntry'value :: !Data.Int.Int32}
                           deriving (Prelude.Show, Prelude.Eq)

instance (a ~ Data.Int.Int32, b ~ Data.Int.Int32,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "key" f TestMap'Int32MapEntry
           TestMap'Int32MapEntry
           a
           b
         where
        lensOf _
          = Lens.Family2.Unchecked.lens _TestMap'Int32MapEntry'key
              (\ x__ y__ -> x__{_TestMap'Int32MapEntry'key = y__})

instance (a ~ Data.Int.Int32, b ~ Data.Int.Int32,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "value" f TestMap'Int32MapEntry
           TestMap'Int32MapEntry
           a
           b
         where
        lensOf _
          = Lens.Family2.Unchecked.lens _TestMap'Int32MapEntry'value
              (\ x__ y__ -> x__{_TestMap'Int32MapEntry'value = y__})

instance Data.Default.Class.Default TestMap'Int32MapEntry where
        def
          = TestMap'Int32MapEntry{_TestMap'Int32MapEntry'key =
                                    Data.ProtoLens.fieldDefault,
                                  _TestMap'Int32MapEntry'value = Data.ProtoLens.fieldDefault}

instance Data.ProtoLens.Message TestMap'Int32MapEntry where
        descriptor
          = let key__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "key"
                      (Data.ProtoLens.Int32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional key)
                      :: Data.ProtoLens.FieldDescriptor TestMap'Int32MapEntry
                value__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "value"
                      (Data.ProtoLens.Int32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional value)
                      :: Data.ProtoLens.FieldDescriptor TestMap'Int32MapEntry
              in
              Data.ProtoLens.MessageDescriptor
                (Data.Map.fromList
                   [(Data.ProtoLens.Tag 1, key__field_descriptor),
                    (Data.ProtoLens.Tag 2, value__field_descriptor)])
                (Data.Map.fromList
                   [("key", key__field_descriptor),
                    ("value", value__field_descriptor)])

data TestMap'Int64MapEntry = TestMap'Int64MapEntry{_TestMap'Int64MapEntry'key
                                                   :: !Data.Int.Int64,
                                                   _TestMap'Int64MapEntry'value :: !Data.Int.Int32}
                           deriving (Prelude.Show, Prelude.Eq)

instance (a ~ Data.Int.Int64, b ~ Data.Int.Int64,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "key" f TestMap'Int64MapEntry
           TestMap'Int64MapEntry
           a
           b
         where
        lensOf _
          = Lens.Family2.Unchecked.lens _TestMap'Int64MapEntry'key
              (\ x__ y__ -> x__{_TestMap'Int64MapEntry'key = y__})

instance (a ~ Data.Int.Int32, b ~ Data.Int.Int32,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "value" f TestMap'Int64MapEntry
           TestMap'Int64MapEntry
           a
           b
         where
        lensOf _
          = Lens.Family2.Unchecked.lens _TestMap'Int64MapEntry'value
              (\ x__ y__ -> x__{_TestMap'Int64MapEntry'value = y__})

instance Data.Default.Class.Default TestMap'Int64MapEntry where
        def
          = TestMap'Int64MapEntry{_TestMap'Int64MapEntry'key =
                                    Data.ProtoLens.fieldDefault,
                                  _TestMap'Int64MapEntry'value = Data.ProtoLens.fieldDefault}

instance Data.ProtoLens.Message TestMap'Int64MapEntry where
        descriptor
          = let key__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "key"
                      (Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional key)
                      :: Data.ProtoLens.FieldDescriptor TestMap'Int64MapEntry
                value__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "value"
                      (Data.ProtoLens.Int32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional value)
                      :: Data.ProtoLens.FieldDescriptor TestMap'Int64MapEntry
              in
              Data.ProtoLens.MessageDescriptor
                (Data.Map.fromList
                   [(Data.ProtoLens.Tag 1, key__field_descriptor),
                    (Data.ProtoLens.Tag 2, value__field_descriptor)])
                (Data.Map.fromList
                   [("key", key__field_descriptor),
                    ("value", value__field_descriptor)])

data TestMap'StringMapEntry = TestMap'StringMapEntry{_TestMap'StringMapEntry'key
                                                     :: !Data.Text.Text,
                                                     _TestMap'StringMapEntry'value ::
                                                     !Data.Int.Int32}
                            deriving (Prelude.Show, Prelude.Eq)

instance (a ~ Data.Text.Text, b ~ Data.Text.Text,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "key" f TestMap'StringMapEntry
           TestMap'StringMapEntry
           a
           b
         where
        lensOf _
          = Lens.Family2.Unchecked.lens _TestMap'StringMapEntry'key
              (\ x__ y__ -> x__{_TestMap'StringMapEntry'key = y__})

instance (a ~ Data.Int.Int32, b ~ Data.Int.Int32,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "value" f TestMap'StringMapEntry
           TestMap'StringMapEntry
           a
           b
         where
        lensOf _
          = Lens.Family2.Unchecked.lens _TestMap'StringMapEntry'value
              (\ x__ y__ -> x__{_TestMap'StringMapEntry'value = y__})

instance Data.Default.Class.Default TestMap'StringMapEntry where
        def
          = TestMap'StringMapEntry{_TestMap'StringMapEntry'key =
                                     Data.ProtoLens.fieldDefault,
                                   _TestMap'StringMapEntry'value = Data.ProtoLens.fieldDefault}

instance Data.ProtoLens.Message TestMap'StringMapEntry where
        descriptor
          = let key__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "key"
                      (Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional key)
                      :: Data.ProtoLens.FieldDescriptor TestMap'StringMapEntry
                value__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "value"
                      (Data.ProtoLens.Int32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional value)
                      :: Data.ProtoLens.FieldDescriptor TestMap'StringMapEntry
              in
              Data.ProtoLens.MessageDescriptor
                (Data.Map.fromList
                   [(Data.ProtoLens.Tag 1, key__field_descriptor),
                    (Data.ProtoLens.Tag 2, value__field_descriptor)])
                (Data.Map.fromList
                   [("key", key__field_descriptor),
                    ("value", value__field_descriptor)])

data TestMap'Uint32MapEntry = TestMap'Uint32MapEntry{_TestMap'Uint32MapEntry'key
                                                     :: !Data.Word.Word32,
                                                     _TestMap'Uint32MapEntry'value ::
                                                     !Data.Int.Int32}
                            deriving (Prelude.Show, Prelude.Eq)

instance (a ~ Data.Word.Word32, b ~ Data.Word.Word32,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "key" f TestMap'Uint32MapEntry
           TestMap'Uint32MapEntry
           a
           b
         where
        lensOf _
          = Lens.Family2.Unchecked.lens _TestMap'Uint32MapEntry'key
              (\ x__ y__ -> x__{_TestMap'Uint32MapEntry'key = y__})

instance (a ~ Data.Int.Int32, b ~ Data.Int.Int32,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "value" f TestMap'Uint32MapEntry
           TestMap'Uint32MapEntry
           a
           b
         where
        lensOf _
          = Lens.Family2.Unchecked.lens _TestMap'Uint32MapEntry'value
              (\ x__ y__ -> x__{_TestMap'Uint32MapEntry'value = y__})

instance Data.Default.Class.Default TestMap'Uint32MapEntry where
        def
          = TestMap'Uint32MapEntry{_TestMap'Uint32MapEntry'key =
                                     Data.ProtoLens.fieldDefault,
                                   _TestMap'Uint32MapEntry'value = Data.ProtoLens.fieldDefault}

instance Data.ProtoLens.Message TestMap'Uint32MapEntry where
        descriptor
          = let key__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "key"
                      (Data.ProtoLens.UInt32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional key)
                      :: Data.ProtoLens.FieldDescriptor TestMap'Uint32MapEntry
                value__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "value"
                      (Data.ProtoLens.Int32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional value)
                      :: Data.ProtoLens.FieldDescriptor TestMap'Uint32MapEntry
              in
              Data.ProtoLens.MessageDescriptor
                (Data.Map.fromList
                   [(Data.ProtoLens.Tag 1, key__field_descriptor),
                    (Data.ProtoLens.Tag 2, value__field_descriptor)])
                (Data.Map.fromList
                   [("key", key__field_descriptor),
                    ("value", value__field_descriptor)])

data TestMap'Uint64MapEntry = TestMap'Uint64MapEntry{_TestMap'Uint64MapEntry'key
                                                     :: !Data.Word.Word64,
                                                     _TestMap'Uint64MapEntry'value ::
                                                     !Data.Int.Int32}
                            deriving (Prelude.Show, Prelude.Eq)

instance (a ~ Data.Word.Word64, b ~ Data.Word.Word64,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "key" f TestMap'Uint64MapEntry
           TestMap'Uint64MapEntry
           a
           b
         where
        lensOf _
          = Lens.Family2.Unchecked.lens _TestMap'Uint64MapEntry'key
              (\ x__ y__ -> x__{_TestMap'Uint64MapEntry'key = y__})

instance (a ~ Data.Int.Int32, b ~ Data.Int.Int32,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "value" f TestMap'Uint64MapEntry
           TestMap'Uint64MapEntry
           a
           b
         where
        lensOf _
          = Lens.Family2.Unchecked.lens _TestMap'Uint64MapEntry'value
              (\ x__ y__ -> x__{_TestMap'Uint64MapEntry'value = y__})

instance Data.Default.Class.Default TestMap'Uint64MapEntry where
        def
          = TestMap'Uint64MapEntry{_TestMap'Uint64MapEntry'key =
                                     Data.ProtoLens.fieldDefault,
                                   _TestMap'Uint64MapEntry'value = Data.ProtoLens.fieldDefault}

instance Data.ProtoLens.Message TestMap'Uint64MapEntry where
        descriptor
          = let key__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "key"
                      (Data.ProtoLens.UInt64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional key)
                      :: Data.ProtoLens.FieldDescriptor TestMap'Uint64MapEntry
                value__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "value"
                      (Data.ProtoLens.Int32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional value)
                      :: Data.ProtoLens.FieldDescriptor TestMap'Uint64MapEntry
              in
              Data.ProtoLens.MessageDescriptor
                (Data.Map.fromList
                   [(Data.ProtoLens.Tag 1, key__field_descriptor),
                    (Data.ProtoLens.Tag 2, value__field_descriptor)])
                (Data.Map.fromList
                   [("key", key__field_descriptor),
                    ("value", value__field_descriptor)])

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
                               _TestMessage'repeatedMessageValue :: ![MessageType]}
                 deriving (Prelude.Show, Prelude.Eq)

instance (a ~ Prelude.Bool, b ~ Prelude.Bool, Prelude.Functor f) =>
         Lens.Labels.HasLens "boolValue" f TestMessage TestMessage a b
         where
        lensOf _
          = Lens.Family2.Unchecked.lens _TestMessage'boolValue
              (\ x__ y__ -> x__{_TestMessage'boolValue = y__})

instance (a ~ Data.Int.Int32, b ~ Data.Int.Int32,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "int32Value" f TestMessage TestMessage a b
         where
        lensOf _
          = Lens.Family2.Unchecked.lens _TestMessage'int32Value
              (\ x__ y__ -> x__{_TestMessage'int32Value = y__})

instance (a ~ Data.Int.Int64, b ~ Data.Int.Int64,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "int64Value" f TestMessage TestMessage a b
         where
        lensOf _
          = Lens.Family2.Unchecked.lens _TestMessage'int64Value
              (\ x__ y__ -> x__{_TestMessage'int64Value = y__})

instance (a ~ Data.Word.Word32, b ~ Data.Word.Word32,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "uint32Value" f TestMessage TestMessage a b
         where
        lensOf _
          = Lens.Family2.Unchecked.lens _TestMessage'uint32Value
              (\ x__ y__ -> x__{_TestMessage'uint32Value = y__})

instance (a ~ Data.Word.Word64, b ~ Data.Word.Word64,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "uint64Value" f TestMessage TestMessage a b
         where
        lensOf _
          = Lens.Family2.Unchecked.lens _TestMessage'uint64Value
              (\ x__ y__ -> x__{_TestMessage'uint64Value = y__})

instance (a ~ Prelude.Float, b ~ Prelude.Float,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "floatValue" f TestMessage TestMessage a b
         where
        lensOf _
          = Lens.Family2.Unchecked.lens _TestMessage'floatValue
              (\ x__ y__ -> x__{_TestMessage'floatValue = y__})

instance (a ~ Prelude.Double, b ~ Prelude.Double,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "doubleValue" f TestMessage TestMessage a b
         where
        lensOf _
          = Lens.Family2.Unchecked.lens _TestMessage'doubleValue
              (\ x__ y__ -> x__{_TestMessage'doubleValue = y__})

instance (a ~ Data.Text.Text, b ~ Data.Text.Text,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "stringValue" f TestMessage TestMessage a b
         where
        lensOf _
          = Lens.Family2.Unchecked.lens _TestMessage'stringValue
              (\ x__ y__ -> x__{_TestMessage'stringValue = y__})

instance (a ~ Data.ByteString.ByteString,
          b ~ Data.ByteString.ByteString, Prelude.Functor f) =>
         Lens.Labels.HasLens "bytesValue" f TestMessage TestMessage a b
         where
        lensOf _
          = Lens.Family2.Unchecked.lens _TestMessage'bytesValue
              (\ x__ y__ -> x__{_TestMessage'bytesValue = y__})

instance (a ~ EnumType, b ~ EnumType, Prelude.Functor f) =>
         Lens.Labels.HasLens "enumValue" f TestMessage TestMessage a b
         where
        lensOf _
          = Lens.Family2.Unchecked.lens _TestMessage'enumValue
              (\ x__ y__ -> x__{_TestMessage'enumValue = y__})

instance (a ~ MessageType, b ~ MessageType, Prelude.Functor f) =>
         Lens.Labels.HasLens "messageValue" f TestMessage TestMessage a b
         where
        lensOf _
          = (Prelude..) maybe'messageValue
              (Data.ProtoLens.maybeLens Data.Default.Class.def)

instance (a ~ Prelude.Maybe MessageType,
          b ~ Prelude.Maybe MessageType, Prelude.Functor f) =>
         Lens.Labels.HasLens "maybe'messageValue" f TestMessage TestMessage
           a
           b
         where
        lensOf _
          = Lens.Family2.Unchecked.lens _TestMessage'messageValue
              (\ x__ y__ -> x__{_TestMessage'messageValue = y__})

instance (a ~ [Prelude.Bool], b ~ [Prelude.Bool],
          Prelude.Functor f) =>
         Lens.Labels.HasLens "repeatedBoolValue" f TestMessage TestMessage a
           b
         where
        lensOf _
          = Lens.Family2.Unchecked.lens _TestMessage'repeatedBoolValue
              (\ x__ y__ -> x__{_TestMessage'repeatedBoolValue = y__})

instance (a ~ [Data.Int.Int32], b ~ [Data.Int.Int32],
          Prelude.Functor f) =>
         Lens.Labels.HasLens "repeatedInt32Value" f TestMessage TestMessage
           a
           b
         where
        lensOf _
          = Lens.Family2.Unchecked.lens _TestMessage'repeatedInt32Value
              (\ x__ y__ -> x__{_TestMessage'repeatedInt32Value = y__})

instance (a ~ [Data.Int.Int64], b ~ [Data.Int.Int64],
          Prelude.Functor f) =>
         Lens.Labels.HasLens "repeatedInt64Value" f TestMessage TestMessage
           a
           b
         where
        lensOf _
          = Lens.Family2.Unchecked.lens _TestMessage'repeatedInt64Value
              (\ x__ y__ -> x__{_TestMessage'repeatedInt64Value = y__})

instance (a ~ [Data.Word.Word32], b ~ [Data.Word.Word32],
          Prelude.Functor f) =>
         Lens.Labels.HasLens "repeatedUint32Value" f TestMessage TestMessage
           a
           b
         where
        lensOf _
          = Lens.Family2.Unchecked.lens _TestMessage'repeatedUint32Value
              (\ x__ y__ -> x__{_TestMessage'repeatedUint32Value = y__})

instance (a ~ [Data.Word.Word64], b ~ [Data.Word.Word64],
          Prelude.Functor f) =>
         Lens.Labels.HasLens "repeatedUint64Value" f TestMessage TestMessage
           a
           b
         where
        lensOf _
          = Lens.Family2.Unchecked.lens _TestMessage'repeatedUint64Value
              (\ x__ y__ -> x__{_TestMessage'repeatedUint64Value = y__})

instance (a ~ [Prelude.Float], b ~ [Prelude.Float],
          Prelude.Functor f) =>
         Lens.Labels.HasLens "repeatedFloatValue" f TestMessage TestMessage
           a
           b
         where
        lensOf _
          = Lens.Family2.Unchecked.lens _TestMessage'repeatedFloatValue
              (\ x__ y__ -> x__{_TestMessage'repeatedFloatValue = y__})

instance (a ~ [Prelude.Double], b ~ [Prelude.Double],
          Prelude.Functor f) =>
         Lens.Labels.HasLens "repeatedDoubleValue" f TestMessage TestMessage
           a
           b
         where
        lensOf _
          = Lens.Family2.Unchecked.lens _TestMessage'repeatedDoubleValue
              (\ x__ y__ -> x__{_TestMessage'repeatedDoubleValue = y__})

instance (a ~ [Data.Text.Text], b ~ [Data.Text.Text],
          Prelude.Functor f) =>
         Lens.Labels.HasLens "repeatedStringValue" f TestMessage TestMessage
           a
           b
         where
        lensOf _
          = Lens.Family2.Unchecked.lens _TestMessage'repeatedStringValue
              (\ x__ y__ -> x__{_TestMessage'repeatedStringValue = y__})

instance (a ~ [Data.ByteString.ByteString],
          b ~ [Data.ByteString.ByteString], Prelude.Functor f) =>
         Lens.Labels.HasLens "repeatedBytesValue" f TestMessage TestMessage
           a
           b
         where
        lensOf _
          = Lens.Family2.Unchecked.lens _TestMessage'repeatedBytesValue
              (\ x__ y__ -> x__{_TestMessage'repeatedBytesValue = y__})

instance (a ~ [EnumType], b ~ [EnumType], Prelude.Functor f) =>
         Lens.Labels.HasLens "repeatedEnumValue" f TestMessage TestMessage a
           b
         where
        lensOf _
          = Lens.Family2.Unchecked.lens _TestMessage'repeatedEnumValue
              (\ x__ y__ -> x__{_TestMessage'repeatedEnumValue = y__})

instance (a ~ [MessageType], b ~ [MessageType],
          Prelude.Functor f) =>
         Lens.Labels.HasLens "repeatedMessageValue" f TestMessage
           TestMessage
           a
           b
         where
        lensOf _
          = Lens.Family2.Unchecked.lens _TestMessage'repeatedMessageValue
              (\ x__ y__ -> x__{_TestMessage'repeatedMessageValue = y__})

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
                        _TestMessage'repeatedMessageValue = []}

instance Data.ProtoLens.Message TestMessage where
        descriptor
          = let boolValue__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "bool_value"
                      (Data.ProtoLens.BoolField ::
                         Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional boolValue)
                      :: Data.ProtoLens.FieldDescriptor TestMessage
                int32Value__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "int32_value"
                      (Data.ProtoLens.Int32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional int32Value)
                      :: Data.ProtoLens.FieldDescriptor TestMessage
                int64Value__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "int64_value"
                      (Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional int64Value)
                      :: Data.ProtoLens.FieldDescriptor TestMessage
                uint32Value__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "uint32_value"
                      (Data.ProtoLens.UInt32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional uint32Value)
                      :: Data.ProtoLens.FieldDescriptor TestMessage
                uint64Value__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "uint64_value"
                      (Data.ProtoLens.UInt64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional uint64Value)
                      :: Data.ProtoLens.FieldDescriptor TestMessage
                floatValue__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "float_value"
                      (Data.ProtoLens.FloatField ::
                         Data.ProtoLens.FieldTypeDescriptor Prelude.Float)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional floatValue)
                      :: Data.ProtoLens.FieldDescriptor TestMessage
                doubleValue__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "double_value"
                      (Data.ProtoLens.DoubleField ::
                         Data.ProtoLens.FieldTypeDescriptor Prelude.Double)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional doubleValue)
                      :: Data.ProtoLens.FieldDescriptor TestMessage
                stringValue__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "string_value"
                      (Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional stringValue)
                      :: Data.ProtoLens.FieldDescriptor TestMessage
                bytesValue__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "bytes_value"
                      (Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional bytesValue)
                      :: Data.ProtoLens.FieldDescriptor TestMessage
                enumValue__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "enum_value"
                      (Data.ProtoLens.EnumField ::
                         Data.ProtoLens.FieldTypeDescriptor EnumType)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional enumValue)
                      :: Data.ProtoLens.FieldDescriptor TestMessage
                messageValue__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "message_value"
                      (Data.ProtoLens.MessageField ::
                         Data.ProtoLens.FieldTypeDescriptor MessageType)
                      (Data.ProtoLens.OptionalField maybe'messageValue)
                      :: Data.ProtoLens.FieldDescriptor TestMessage
                repeatedBoolValue__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "repeated_bool_value"
                      (Data.ProtoLens.BoolField ::
                         Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Packed
                         repeatedBoolValue)
                      :: Data.ProtoLens.FieldDescriptor TestMessage
                repeatedInt32Value__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "repeated_int32_value"
                      (Data.ProtoLens.Int32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Packed
                         repeatedInt32Value)
                      :: Data.ProtoLens.FieldDescriptor TestMessage
                repeatedInt64Value__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "repeated_int64_value"
                      (Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Packed
                         repeatedInt64Value)
                      :: Data.ProtoLens.FieldDescriptor TestMessage
                repeatedUint32Value__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "repeated_uint32_value"
                      (Data.ProtoLens.UInt32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Packed
                         repeatedUint32Value)
                      :: Data.ProtoLens.FieldDescriptor TestMessage
                repeatedUint64Value__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "repeated_uint64_value"
                      (Data.ProtoLens.UInt64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Packed
                         repeatedUint64Value)
                      :: Data.ProtoLens.FieldDescriptor TestMessage
                repeatedFloatValue__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "repeated_float_value"
                      (Data.ProtoLens.FloatField ::
                         Data.ProtoLens.FieldTypeDescriptor Prelude.Float)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Packed
                         repeatedFloatValue)
                      :: Data.ProtoLens.FieldDescriptor TestMessage
                repeatedDoubleValue__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "repeated_double_value"
                      (Data.ProtoLens.DoubleField ::
                         Data.ProtoLens.FieldTypeDescriptor Prelude.Double)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Packed
                         repeatedDoubleValue)
                      :: Data.ProtoLens.FieldDescriptor TestMessage
                repeatedStringValue__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "repeated_string_value"
                      (Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         repeatedStringValue)
                      :: Data.ProtoLens.FieldDescriptor TestMessage
                repeatedBytesValue__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "repeated_bytes_value"
                      (Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         repeatedBytesValue)
                      :: Data.ProtoLens.FieldDescriptor TestMessage
                repeatedEnumValue__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "repeated_enum_value"
                      (Data.ProtoLens.EnumField ::
                         Data.ProtoLens.FieldTypeDescriptor EnumType)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Packed
                         repeatedEnumValue)
                      :: Data.ProtoLens.FieldDescriptor TestMessage
                repeatedMessageValue__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "repeated_message_value"
                      (Data.ProtoLens.MessageField ::
                         Data.ProtoLens.FieldTypeDescriptor MessageType)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         repeatedMessageValue)
                      :: Data.ProtoLens.FieldDescriptor TestMessage
              in
              Data.ProtoLens.MessageDescriptor
                (Data.Map.fromList
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
                    (Data.ProtoLens.Tag 31, repeatedMessageValue__field_descriptor)])
                (Data.Map.fromList
                   [("bool_value", boolValue__field_descriptor),
                    ("int32_value", int32Value__field_descriptor),
                    ("int64_value", int64Value__field_descriptor),
                    ("uint32_value", uint32Value__field_descriptor),
                    ("uint64_value", uint64Value__field_descriptor),
                    ("float_value", floatValue__field_descriptor),
                    ("double_value", doubleValue__field_descriptor),
                    ("string_value", stringValue__field_descriptor),
                    ("bytes_value", bytesValue__field_descriptor),
                    ("enum_value", enumValue__field_descriptor),
                    ("message_value", messageValue__field_descriptor),
                    ("repeated_bool_value", repeatedBoolValue__field_descriptor),
                    ("repeated_int32_value", repeatedInt32Value__field_descriptor),
                    ("repeated_int64_value", repeatedInt64Value__field_descriptor),
                    ("repeated_uint32_value", repeatedUint32Value__field_descriptor),
                    ("repeated_uint64_value", repeatedUint64Value__field_descriptor),
                    ("repeated_float_value", repeatedFloatValue__field_descriptor),
                    ("repeated_double_value", repeatedDoubleValue__field_descriptor),
                    ("repeated_string_value", repeatedStringValue__field_descriptor),
                    ("repeated_bytes_value", repeatedBytesValue__field_descriptor),
                    ("repeated_enum_value", repeatedEnumValue__field_descriptor),
                    ("repeated_message_value",
                     repeatedMessageValue__field_descriptor)])

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
                                   !(Data.Map.Map Data.Text.Text TestNestedMap)}
                   deriving (Prelude.Show, Prelude.Eq)

instance (a ~ Data.Map.Map Prelude.Bool Data.Int.Int32,
          b ~ Data.Map.Map Prelude.Bool Data.Int.Int32, Prelude.Functor f) =>
         Lens.Labels.HasLens "boolMap" f TestNestedMap TestNestedMap a b
         where
        lensOf _
          = Lens.Family2.Unchecked.lens _TestNestedMap'boolMap
              (\ x__ y__ -> x__{_TestNestedMap'boolMap = y__})

instance (a ~ Data.Map.Map Data.Int.Int32 Data.Int.Int32,
          b ~ Data.Map.Map Data.Int.Int32 Data.Int.Int32,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "int32Map" f TestNestedMap TestNestedMap a b
         where
        lensOf _
          = Lens.Family2.Unchecked.lens _TestNestedMap'int32Map
              (\ x__ y__ -> x__{_TestNestedMap'int32Map = y__})

instance (a ~ Data.Map.Map Data.Int.Int64 Data.Int.Int32,
          b ~ Data.Map.Map Data.Int.Int64 Data.Int.Int32,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "int64Map" f TestNestedMap TestNestedMap a b
         where
        lensOf _
          = Lens.Family2.Unchecked.lens _TestNestedMap'int64Map
              (\ x__ y__ -> x__{_TestNestedMap'int64Map = y__})

instance (a ~ Data.Map.Map Data.Word.Word32 Data.Int.Int32,
          b ~ Data.Map.Map Data.Word.Word32 Data.Int.Int32,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "uint32Map" f TestNestedMap TestNestedMap a b
         where
        lensOf _
          = Lens.Family2.Unchecked.lens _TestNestedMap'uint32Map
              (\ x__ y__ -> x__{_TestNestedMap'uint32Map = y__})

instance (a ~ Data.Map.Map Data.Word.Word64 Data.Int.Int32,
          b ~ Data.Map.Map Data.Word.Word64 Data.Int.Int32,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "uint64Map" f TestNestedMap TestNestedMap a b
         where
        lensOf _
          = Lens.Family2.Unchecked.lens _TestNestedMap'uint64Map
              (\ x__ y__ -> x__{_TestNestedMap'uint64Map = y__})

instance (a ~ Data.Map.Map Data.Text.Text Data.Int.Int32,
          b ~ Data.Map.Map Data.Text.Text Data.Int.Int32,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "stringMap" f TestNestedMap TestNestedMap a b
         where
        lensOf _
          = Lens.Family2.Unchecked.lens _TestNestedMap'stringMap
              (\ x__ y__ -> x__{_TestNestedMap'stringMap = y__})

instance (a ~ Data.Map.Map Data.Text.Text TestNestedMap,
          b ~ Data.Map.Map Data.Text.Text TestNestedMap,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "mapMap" f TestNestedMap TestNestedMap a b
         where
        lensOf _
          = Lens.Family2.Unchecked.lens _TestNestedMap'mapMap
              (\ x__ y__ -> x__{_TestNestedMap'mapMap = y__})

instance Data.Default.Class.Default TestNestedMap where
        def
          = TestNestedMap{_TestNestedMap'boolMap = Data.Map.empty,
                          _TestNestedMap'int32Map = Data.Map.empty,
                          _TestNestedMap'int64Map = Data.Map.empty,
                          _TestNestedMap'uint32Map = Data.Map.empty,
                          _TestNestedMap'uint64Map = Data.Map.empty,
                          _TestNestedMap'stringMap = Data.Map.empty,
                          _TestNestedMap'mapMap = Data.Map.empty}

instance Data.ProtoLens.Message TestNestedMap where
        descriptor
          = let boolMap__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "bool_map"
                      (Data.ProtoLens.MessageField ::
                         Data.ProtoLens.FieldTypeDescriptor TestNestedMap'BoolMapEntry)
                      (Data.ProtoLens.MapField key value boolMap)
                      :: Data.ProtoLens.FieldDescriptor TestNestedMap
                int32Map__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "int32_map"
                      (Data.ProtoLens.MessageField ::
                         Data.ProtoLens.FieldTypeDescriptor TestNestedMap'Int32MapEntry)
                      (Data.ProtoLens.MapField key value int32Map)
                      :: Data.ProtoLens.FieldDescriptor TestNestedMap
                int64Map__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "int64_map"
                      (Data.ProtoLens.MessageField ::
                         Data.ProtoLens.FieldTypeDescriptor TestNestedMap'Int64MapEntry)
                      (Data.ProtoLens.MapField key value int64Map)
                      :: Data.ProtoLens.FieldDescriptor TestNestedMap
                uint32Map__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "uint32_map"
                      (Data.ProtoLens.MessageField ::
                         Data.ProtoLens.FieldTypeDescriptor TestNestedMap'Uint32MapEntry)
                      (Data.ProtoLens.MapField key value uint32Map)
                      :: Data.ProtoLens.FieldDescriptor TestNestedMap
                uint64Map__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "uint64_map"
                      (Data.ProtoLens.MessageField ::
                         Data.ProtoLens.FieldTypeDescriptor TestNestedMap'Uint64MapEntry)
                      (Data.ProtoLens.MapField key value uint64Map)
                      :: Data.ProtoLens.FieldDescriptor TestNestedMap
                stringMap__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "string_map"
                      (Data.ProtoLens.MessageField ::
                         Data.ProtoLens.FieldTypeDescriptor TestNestedMap'StringMapEntry)
                      (Data.ProtoLens.MapField key value stringMap)
                      :: Data.ProtoLens.FieldDescriptor TestNestedMap
                mapMap__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "map_map"
                      (Data.ProtoLens.MessageField ::
                         Data.ProtoLens.FieldTypeDescriptor TestNestedMap'MapMapEntry)
                      (Data.ProtoLens.MapField key value mapMap)
                      :: Data.ProtoLens.FieldDescriptor TestNestedMap
              in
              Data.ProtoLens.MessageDescriptor
                (Data.Map.fromList
                   [(Data.ProtoLens.Tag 1, boolMap__field_descriptor),
                    (Data.ProtoLens.Tag 2, int32Map__field_descriptor),
                    (Data.ProtoLens.Tag 3, int64Map__field_descriptor),
                    (Data.ProtoLens.Tag 4, uint32Map__field_descriptor),
                    (Data.ProtoLens.Tag 5, uint64Map__field_descriptor),
                    (Data.ProtoLens.Tag 6, stringMap__field_descriptor),
                    (Data.ProtoLens.Tag 7, mapMap__field_descriptor)])
                (Data.Map.fromList
                   [("bool_map", boolMap__field_descriptor),
                    ("int32_map", int32Map__field_descriptor),
                    ("int64_map", int64Map__field_descriptor),
                    ("uint32_map", uint32Map__field_descriptor),
                    ("uint64_map", uint64Map__field_descriptor),
                    ("string_map", stringMap__field_descriptor),
                    ("map_map", mapMap__field_descriptor)])

data TestNestedMap'BoolMapEntry = TestNestedMap'BoolMapEntry{_TestNestedMap'BoolMapEntry'key
                                                             :: !Prelude.Bool,
                                                             _TestNestedMap'BoolMapEntry'value ::
                                                             !Data.Int.Int32}
                                deriving (Prelude.Show, Prelude.Eq)

instance (a ~ Prelude.Bool, b ~ Prelude.Bool, Prelude.Functor f) =>
         Lens.Labels.HasLens "key" f TestNestedMap'BoolMapEntry
           TestNestedMap'BoolMapEntry
           a
           b
         where
        lensOf _
          = Lens.Family2.Unchecked.lens _TestNestedMap'BoolMapEntry'key
              (\ x__ y__ -> x__{_TestNestedMap'BoolMapEntry'key = y__})

instance (a ~ Data.Int.Int32, b ~ Data.Int.Int32,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "value" f TestNestedMap'BoolMapEntry
           TestNestedMap'BoolMapEntry
           a
           b
         where
        lensOf _
          = Lens.Family2.Unchecked.lens _TestNestedMap'BoolMapEntry'value
              (\ x__ y__ -> x__{_TestNestedMap'BoolMapEntry'value = y__})

instance Data.Default.Class.Default TestNestedMap'BoolMapEntry
         where
        def
          = TestNestedMap'BoolMapEntry{_TestNestedMap'BoolMapEntry'key =
                                         Data.ProtoLens.fieldDefault,
                                       _TestNestedMap'BoolMapEntry'value =
                                         Data.ProtoLens.fieldDefault}

instance Data.ProtoLens.Message TestNestedMap'BoolMapEntry where
        descriptor
          = let key__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "key"
                      (Data.ProtoLens.BoolField ::
                         Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional key)
                      :: Data.ProtoLens.FieldDescriptor TestNestedMap'BoolMapEntry
                value__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "value"
                      (Data.ProtoLens.Int32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional value)
                      :: Data.ProtoLens.FieldDescriptor TestNestedMap'BoolMapEntry
              in
              Data.ProtoLens.MessageDescriptor
                (Data.Map.fromList
                   [(Data.ProtoLens.Tag 1, key__field_descriptor),
                    (Data.ProtoLens.Tag 2, value__field_descriptor)])
                (Data.Map.fromList
                   [("key", key__field_descriptor),
                    ("value", value__field_descriptor)])

data TestNestedMap'Int32MapEntry = TestNestedMap'Int32MapEntry{_TestNestedMap'Int32MapEntry'key
                                                               :: !Data.Int.Int32,
                                                               _TestNestedMap'Int32MapEntry'value ::
                                                               !Data.Int.Int32}
                                 deriving (Prelude.Show, Prelude.Eq)

instance (a ~ Data.Int.Int32, b ~ Data.Int.Int32,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "key" f TestNestedMap'Int32MapEntry
           TestNestedMap'Int32MapEntry
           a
           b
         where
        lensOf _
          = Lens.Family2.Unchecked.lens _TestNestedMap'Int32MapEntry'key
              (\ x__ y__ -> x__{_TestNestedMap'Int32MapEntry'key = y__})

instance (a ~ Data.Int.Int32, b ~ Data.Int.Int32,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "value" f TestNestedMap'Int32MapEntry
           TestNestedMap'Int32MapEntry
           a
           b
         where
        lensOf _
          = Lens.Family2.Unchecked.lens _TestNestedMap'Int32MapEntry'value
              (\ x__ y__ -> x__{_TestNestedMap'Int32MapEntry'value = y__})

instance Data.Default.Class.Default TestNestedMap'Int32MapEntry
         where
        def
          = TestNestedMap'Int32MapEntry{_TestNestedMap'Int32MapEntry'key =
                                          Data.ProtoLens.fieldDefault,
                                        _TestNestedMap'Int32MapEntry'value =
                                          Data.ProtoLens.fieldDefault}

instance Data.ProtoLens.Message TestNestedMap'Int32MapEntry where
        descriptor
          = let key__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "key"
                      (Data.ProtoLens.Int32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional key)
                      :: Data.ProtoLens.FieldDescriptor TestNestedMap'Int32MapEntry
                value__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "value"
                      (Data.ProtoLens.Int32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional value)
                      :: Data.ProtoLens.FieldDescriptor TestNestedMap'Int32MapEntry
              in
              Data.ProtoLens.MessageDescriptor
                (Data.Map.fromList
                   [(Data.ProtoLens.Tag 1, key__field_descriptor),
                    (Data.ProtoLens.Tag 2, value__field_descriptor)])
                (Data.Map.fromList
                   [("key", key__field_descriptor),
                    ("value", value__field_descriptor)])

data TestNestedMap'Int64MapEntry = TestNestedMap'Int64MapEntry{_TestNestedMap'Int64MapEntry'key
                                                               :: !Data.Int.Int64,
                                                               _TestNestedMap'Int64MapEntry'value ::
                                                               !Data.Int.Int32}
                                 deriving (Prelude.Show, Prelude.Eq)

instance (a ~ Data.Int.Int64, b ~ Data.Int.Int64,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "key" f TestNestedMap'Int64MapEntry
           TestNestedMap'Int64MapEntry
           a
           b
         where
        lensOf _
          = Lens.Family2.Unchecked.lens _TestNestedMap'Int64MapEntry'key
              (\ x__ y__ -> x__{_TestNestedMap'Int64MapEntry'key = y__})

instance (a ~ Data.Int.Int32, b ~ Data.Int.Int32,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "value" f TestNestedMap'Int64MapEntry
           TestNestedMap'Int64MapEntry
           a
           b
         where
        lensOf _
          = Lens.Family2.Unchecked.lens _TestNestedMap'Int64MapEntry'value
              (\ x__ y__ -> x__{_TestNestedMap'Int64MapEntry'value = y__})

instance Data.Default.Class.Default TestNestedMap'Int64MapEntry
         where
        def
          = TestNestedMap'Int64MapEntry{_TestNestedMap'Int64MapEntry'key =
                                          Data.ProtoLens.fieldDefault,
                                        _TestNestedMap'Int64MapEntry'value =
                                          Data.ProtoLens.fieldDefault}

instance Data.ProtoLens.Message TestNestedMap'Int64MapEntry where
        descriptor
          = let key__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "key"
                      (Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional key)
                      :: Data.ProtoLens.FieldDescriptor TestNestedMap'Int64MapEntry
                value__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "value"
                      (Data.ProtoLens.Int32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional value)
                      :: Data.ProtoLens.FieldDescriptor TestNestedMap'Int64MapEntry
              in
              Data.ProtoLens.MessageDescriptor
                (Data.Map.fromList
                   [(Data.ProtoLens.Tag 1, key__field_descriptor),
                    (Data.ProtoLens.Tag 2, value__field_descriptor)])
                (Data.Map.fromList
                   [("key", key__field_descriptor),
                    ("value", value__field_descriptor)])

data TestNestedMap'MapMapEntry = TestNestedMap'MapMapEntry{_TestNestedMap'MapMapEntry'key
                                                           :: !Data.Text.Text,
                                                           _TestNestedMap'MapMapEntry'value ::
                                                           !(Prelude.Maybe TestNestedMap)}
                               deriving (Prelude.Show, Prelude.Eq)

instance (a ~ Data.Text.Text, b ~ Data.Text.Text,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "key" f TestNestedMap'MapMapEntry
           TestNestedMap'MapMapEntry
           a
           b
         where
        lensOf _
          = Lens.Family2.Unchecked.lens _TestNestedMap'MapMapEntry'key
              (\ x__ y__ -> x__{_TestNestedMap'MapMapEntry'key = y__})

instance (a ~ TestNestedMap, b ~ TestNestedMap,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "value" f TestNestedMap'MapMapEntry
           TestNestedMap'MapMapEntry
           a
           b
         where
        lensOf _
          = (Prelude..) maybe'value
              (Data.ProtoLens.maybeLens Data.Default.Class.def)

instance (a ~ Prelude.Maybe TestNestedMap,
          b ~ Prelude.Maybe TestNestedMap, Prelude.Functor f) =>
         Lens.Labels.HasLens "maybe'value" f TestNestedMap'MapMapEntry
           TestNestedMap'MapMapEntry
           a
           b
         where
        lensOf _
          = Lens.Family2.Unchecked.lens _TestNestedMap'MapMapEntry'value
              (\ x__ y__ -> x__{_TestNestedMap'MapMapEntry'value = y__})

instance Data.Default.Class.Default TestNestedMap'MapMapEntry where
        def
          = TestNestedMap'MapMapEntry{_TestNestedMap'MapMapEntry'key =
                                        Data.ProtoLens.fieldDefault,
                                      _TestNestedMap'MapMapEntry'value = Prelude.Nothing}

instance Data.ProtoLens.Message TestNestedMap'MapMapEntry where
        descriptor
          = let key__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "key"
                      (Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional key)
                      :: Data.ProtoLens.FieldDescriptor TestNestedMap'MapMapEntry
                value__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "value"
                      (Data.ProtoLens.MessageField ::
                         Data.ProtoLens.FieldTypeDescriptor TestNestedMap)
                      (Data.ProtoLens.OptionalField maybe'value)
                      :: Data.ProtoLens.FieldDescriptor TestNestedMap'MapMapEntry
              in
              Data.ProtoLens.MessageDescriptor
                (Data.Map.fromList
                   [(Data.ProtoLens.Tag 1, key__field_descriptor),
                    (Data.ProtoLens.Tag 2, value__field_descriptor)])
                (Data.Map.fromList
                   [("key", key__field_descriptor),
                    ("value", value__field_descriptor)])

data TestNestedMap'StringMapEntry = TestNestedMap'StringMapEntry{_TestNestedMap'StringMapEntry'key
                                                                 :: !Data.Text.Text,
                                                                 _TestNestedMap'StringMapEntry'value
                                                                 :: !Data.Int.Int32}
                                  deriving (Prelude.Show, Prelude.Eq)

instance (a ~ Data.Text.Text, b ~ Data.Text.Text,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "key" f TestNestedMap'StringMapEntry
           TestNestedMap'StringMapEntry
           a
           b
         where
        lensOf _
          = Lens.Family2.Unchecked.lens _TestNestedMap'StringMapEntry'key
              (\ x__ y__ -> x__{_TestNestedMap'StringMapEntry'key = y__})

instance (a ~ Data.Int.Int32, b ~ Data.Int.Int32,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "value" f TestNestedMap'StringMapEntry
           TestNestedMap'StringMapEntry
           a
           b
         where
        lensOf _
          = Lens.Family2.Unchecked.lens _TestNestedMap'StringMapEntry'value
              (\ x__ y__ -> x__{_TestNestedMap'StringMapEntry'value = y__})

instance Data.Default.Class.Default TestNestedMap'StringMapEntry
         where
        def
          = TestNestedMap'StringMapEntry{_TestNestedMap'StringMapEntry'key =
                                           Data.ProtoLens.fieldDefault,
                                         _TestNestedMap'StringMapEntry'value =
                                           Data.ProtoLens.fieldDefault}

instance Data.ProtoLens.Message TestNestedMap'StringMapEntry where
        descriptor
          = let key__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "key"
                      (Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional key)
                      :: Data.ProtoLens.FieldDescriptor TestNestedMap'StringMapEntry
                value__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "value"
                      (Data.ProtoLens.Int32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional value)
                      :: Data.ProtoLens.FieldDescriptor TestNestedMap'StringMapEntry
              in
              Data.ProtoLens.MessageDescriptor
                (Data.Map.fromList
                   [(Data.ProtoLens.Tag 1, key__field_descriptor),
                    (Data.ProtoLens.Tag 2, value__field_descriptor)])
                (Data.Map.fromList
                   [("key", key__field_descriptor),
                    ("value", value__field_descriptor)])

data TestNestedMap'Uint32MapEntry = TestNestedMap'Uint32MapEntry{_TestNestedMap'Uint32MapEntry'key
                                                                 :: !Data.Word.Word32,
                                                                 _TestNestedMap'Uint32MapEntry'value
                                                                 :: !Data.Int.Int32}
                                  deriving (Prelude.Show, Prelude.Eq)

instance (a ~ Data.Word.Word32, b ~ Data.Word.Word32,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "key" f TestNestedMap'Uint32MapEntry
           TestNestedMap'Uint32MapEntry
           a
           b
         where
        lensOf _
          = Lens.Family2.Unchecked.lens _TestNestedMap'Uint32MapEntry'key
              (\ x__ y__ -> x__{_TestNestedMap'Uint32MapEntry'key = y__})

instance (a ~ Data.Int.Int32, b ~ Data.Int.Int32,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "value" f TestNestedMap'Uint32MapEntry
           TestNestedMap'Uint32MapEntry
           a
           b
         where
        lensOf _
          = Lens.Family2.Unchecked.lens _TestNestedMap'Uint32MapEntry'value
              (\ x__ y__ -> x__{_TestNestedMap'Uint32MapEntry'value = y__})

instance Data.Default.Class.Default TestNestedMap'Uint32MapEntry
         where
        def
          = TestNestedMap'Uint32MapEntry{_TestNestedMap'Uint32MapEntry'key =
                                           Data.ProtoLens.fieldDefault,
                                         _TestNestedMap'Uint32MapEntry'value =
                                           Data.ProtoLens.fieldDefault}

instance Data.ProtoLens.Message TestNestedMap'Uint32MapEntry where
        descriptor
          = let key__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "key"
                      (Data.ProtoLens.UInt32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional key)
                      :: Data.ProtoLens.FieldDescriptor TestNestedMap'Uint32MapEntry
                value__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "value"
                      (Data.ProtoLens.Int32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional value)
                      :: Data.ProtoLens.FieldDescriptor TestNestedMap'Uint32MapEntry
              in
              Data.ProtoLens.MessageDescriptor
                (Data.Map.fromList
                   [(Data.ProtoLens.Tag 1, key__field_descriptor),
                    (Data.ProtoLens.Tag 2, value__field_descriptor)])
                (Data.Map.fromList
                   [("key", key__field_descriptor),
                    ("value", value__field_descriptor)])

data TestNestedMap'Uint64MapEntry = TestNestedMap'Uint64MapEntry{_TestNestedMap'Uint64MapEntry'key
                                                                 :: !Data.Word.Word64,
                                                                 _TestNestedMap'Uint64MapEntry'value
                                                                 :: !Data.Int.Int32}
                                  deriving (Prelude.Show, Prelude.Eq)

instance (a ~ Data.Word.Word64, b ~ Data.Word.Word64,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "key" f TestNestedMap'Uint64MapEntry
           TestNestedMap'Uint64MapEntry
           a
           b
         where
        lensOf _
          = Lens.Family2.Unchecked.lens _TestNestedMap'Uint64MapEntry'key
              (\ x__ y__ -> x__{_TestNestedMap'Uint64MapEntry'key = y__})

instance (a ~ Data.Int.Int32, b ~ Data.Int.Int32,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "value" f TestNestedMap'Uint64MapEntry
           TestNestedMap'Uint64MapEntry
           a
           b
         where
        lensOf _
          = Lens.Family2.Unchecked.lens _TestNestedMap'Uint64MapEntry'value
              (\ x__ y__ -> x__{_TestNestedMap'Uint64MapEntry'value = y__})

instance Data.Default.Class.Default TestNestedMap'Uint64MapEntry
         where
        def
          = TestNestedMap'Uint64MapEntry{_TestNestedMap'Uint64MapEntry'key =
                                           Data.ProtoLens.fieldDefault,
                                         _TestNestedMap'Uint64MapEntry'value =
                                           Data.ProtoLens.fieldDefault}

instance Data.ProtoLens.Message TestNestedMap'Uint64MapEntry where
        descriptor
          = let key__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "key"
                      (Data.ProtoLens.UInt64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional key)
                      :: Data.ProtoLens.FieldDescriptor TestNestedMap'Uint64MapEntry
                value__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "value"
                      (Data.ProtoLens.Int32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional value)
                      :: Data.ProtoLens.FieldDescriptor TestNestedMap'Uint64MapEntry
              in
              Data.ProtoLens.MessageDescriptor
                (Data.Map.fromList
                   [(Data.ProtoLens.Tag 1, key__field_descriptor),
                    (Data.ProtoLens.Tag 2, value__field_descriptor)])
                (Data.Map.fromList
                   [("key", key__field_descriptor),
                    ("value", value__field_descriptor)])

data TestOneof = TestOneof{_TestOneof'oneofInt32Value ::
                           !(Prelude.Maybe Data.Int.Int32),
                           _TestOneof'oneofStringValue :: !(Prelude.Maybe Data.Text.Text),
                           _TestOneof'oneofBytesValue ::
                           !(Prelude.Maybe Data.ByteString.ByteString),
                           _TestOneof'oneofEnumValue :: !(Prelude.Maybe EnumType),
                           _TestOneof'oneofMessageValue :: !(Prelude.Maybe MessageType)}
               deriving (Prelude.Show, Prelude.Eq)

instance (a ~ Data.Int.Int32, b ~ Data.Int.Int32,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "oneofInt32Value" f TestOneof TestOneof a b
         where
        lensOf _
          = (Prelude..) maybe'oneofInt32Value
              (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)

instance (a ~ Prelude.Maybe Data.Int.Int32,
          b ~ Prelude.Maybe Data.Int.Int32, Prelude.Functor f) =>
         Lens.Labels.HasLens "maybe'oneofInt32Value" f TestOneof TestOneof a
           b
         where
        lensOf _
          = Lens.Family2.Unchecked.lens _TestOneof'oneofInt32Value
              (\ x__ y__ -> x__{_TestOneof'oneofInt32Value = y__})

instance (a ~ Data.Text.Text, b ~ Data.Text.Text,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "oneofStringValue" f TestOneof TestOneof a b
         where
        lensOf _
          = (Prelude..) maybe'oneofStringValue
              (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)

instance (a ~ Prelude.Maybe Data.Text.Text,
          b ~ Prelude.Maybe Data.Text.Text, Prelude.Functor f) =>
         Lens.Labels.HasLens "maybe'oneofStringValue" f TestOneof TestOneof
           a
           b
         where
        lensOf _
          = Lens.Family2.Unchecked.lens _TestOneof'oneofStringValue
              (\ x__ y__ -> x__{_TestOneof'oneofStringValue = y__})

instance (a ~ Data.ByteString.ByteString,
          b ~ Data.ByteString.ByteString, Prelude.Functor f) =>
         Lens.Labels.HasLens "oneofBytesValue" f TestOneof TestOneof a b
         where
        lensOf _
          = (Prelude..) maybe'oneofBytesValue
              (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)

instance (a ~ Prelude.Maybe Data.ByteString.ByteString,
          b ~ Prelude.Maybe Data.ByteString.ByteString, Prelude.Functor f) =>
         Lens.Labels.HasLens "maybe'oneofBytesValue" f TestOneof TestOneof a
           b
         where
        lensOf _
          = Lens.Family2.Unchecked.lens _TestOneof'oneofBytesValue
              (\ x__ y__ -> x__{_TestOneof'oneofBytesValue = y__})

instance (a ~ EnumType, b ~ EnumType, Prelude.Functor f) =>
         Lens.Labels.HasLens "oneofEnumValue" f TestOneof TestOneof a b
         where
        lensOf _
          = (Prelude..) maybe'oneofEnumValue
              (Data.ProtoLens.maybeLens Data.Default.Class.def)

instance (a ~ Prelude.Maybe EnumType, b ~ Prelude.Maybe EnumType,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "maybe'oneofEnumValue" f TestOneof TestOneof a
           b
         where
        lensOf _
          = Lens.Family2.Unchecked.lens _TestOneof'oneofEnumValue
              (\ x__ y__ -> x__{_TestOneof'oneofEnumValue = y__})

instance (a ~ MessageType, b ~ MessageType, Prelude.Functor f) =>
         Lens.Labels.HasLens "oneofMessageValue" f TestOneof TestOneof a b
         where
        lensOf _
          = (Prelude..) maybe'oneofMessageValue
              (Data.ProtoLens.maybeLens Data.Default.Class.def)

instance (a ~ Prelude.Maybe MessageType,
          b ~ Prelude.Maybe MessageType, Prelude.Functor f) =>
         Lens.Labels.HasLens "maybe'oneofMessageValue" f TestOneof TestOneof
           a
           b
         where
        lensOf _
          = Lens.Family2.Unchecked.lens _TestOneof'oneofMessageValue
              (\ x__ y__ -> x__{_TestOneof'oneofMessageValue = y__})

instance Data.Default.Class.Default TestOneof where
        def
          = TestOneof{_TestOneof'oneofInt32Value = Prelude.Nothing,
                      _TestOneof'oneofStringValue = Prelude.Nothing,
                      _TestOneof'oneofBytesValue = Prelude.Nothing,
                      _TestOneof'oneofEnumValue = Prelude.Nothing,
                      _TestOneof'oneofMessageValue = Prelude.Nothing}

instance Data.ProtoLens.Message TestOneof where
        descriptor
          = let oneofInt32Value__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "oneof_int32_value"
                      (Data.ProtoLens.Int32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
                      (Data.ProtoLens.OptionalField maybe'oneofInt32Value)
                      :: Data.ProtoLens.FieldDescriptor TestOneof
                oneofStringValue__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "oneof_string_value"
                      (Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.OptionalField maybe'oneofStringValue)
                      :: Data.ProtoLens.FieldDescriptor TestOneof
                oneofBytesValue__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "oneof_bytes_value"
                      (Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.OptionalField maybe'oneofBytesValue)
                      :: Data.ProtoLens.FieldDescriptor TestOneof
                oneofEnumValue__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "oneof_enum_value"
                      (Data.ProtoLens.EnumField ::
                         Data.ProtoLens.FieldTypeDescriptor EnumType)
                      (Data.ProtoLens.OptionalField maybe'oneofEnumValue)
                      :: Data.ProtoLens.FieldDescriptor TestOneof
                oneofMessageValue__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "oneof_message_value"
                      (Data.ProtoLens.MessageField ::
                         Data.ProtoLens.FieldTypeDescriptor MessageType)
                      (Data.ProtoLens.OptionalField maybe'oneofMessageValue)
                      :: Data.ProtoLens.FieldDescriptor TestOneof
              in
              Data.ProtoLens.MessageDescriptor
                (Data.Map.fromList
                   [(Data.ProtoLens.Tag 1, oneofInt32Value__field_descriptor),
                    (Data.ProtoLens.Tag 2, oneofStringValue__field_descriptor),
                    (Data.ProtoLens.Tag 3, oneofBytesValue__field_descriptor),
                    (Data.ProtoLens.Tag 4, oneofEnumValue__field_descriptor),
                    (Data.ProtoLens.Tag 5, oneofMessageValue__field_descriptor)])
                (Data.Map.fromList
                   [("oneof_int32_value", oneofInt32Value__field_descriptor),
                    ("oneof_string_value", oneofStringValue__field_descriptor),
                    ("oneof_bytes_value", oneofBytesValue__field_descriptor),
                    ("oneof_enum_value", oneofEnumValue__field_descriptor),
                    ("oneof_message_value", oneofMessageValue__field_descriptor)])

boolMap ::
        forall f s t a b . (Lens.Labels.HasLens "boolMap" f s t a b) =>
          Lens.Family2.LensLike f s t a b
boolMap
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "boolMap")

boolValue ::
          forall f s t a b . (Lens.Labels.HasLens "boolValue" f s t a b) =>
            Lens.Family2.LensLike f s t a b
boolValue
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "boolValue")

bytesValue ::
           forall f s t a b . (Lens.Labels.HasLens "bytesValue" f s t a b) =>
             Lens.Family2.LensLike f s t a b
bytesValue
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "bytesValue")

doubleValue ::
            forall f s t a b . (Lens.Labels.HasLens "doubleValue" f s t a b) =>
              Lens.Family2.LensLike f s t a b
doubleValue
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "doubleValue")

enumValue ::
          forall f s t a b . (Lens.Labels.HasLens "enumValue" f s t a b) =>
            Lens.Family2.LensLike f s t a b
enumValue
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "enumValue")

floatValue ::
           forall f s t a b . (Lens.Labels.HasLens "floatValue" f s t a b) =>
             Lens.Family2.LensLike f s t a b
floatValue
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "floatValue")

int32Map ::
         forall f s t a b . (Lens.Labels.HasLens "int32Map" f s t a b) =>
           Lens.Family2.LensLike f s t a b
int32Map
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "int32Map")

int32Value ::
           forall f s t a b . (Lens.Labels.HasLens "int32Value" f s t a b) =>
             Lens.Family2.LensLike f s t a b
int32Value
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "int32Value")

int64Map ::
         forall f s t a b . (Lens.Labels.HasLens "int64Map" f s t a b) =>
           Lens.Family2.LensLike f s t a b
int64Map
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "int64Map")

int64Value ::
           forall f s t a b . (Lens.Labels.HasLens "int64Value" f s t a b) =>
             Lens.Family2.LensLike f s t a b
int64Value
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "int64Value")

key ::
    forall f s t a b . (Lens.Labels.HasLens "key" f s t a b) =>
      Lens.Family2.LensLike f s t a b
key
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "key")

mapMap ::
       forall f s t a b . (Lens.Labels.HasLens "mapMap" f s t a b) =>
         Lens.Family2.LensLike f s t a b
mapMap
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "mapMap")

maybe'messageValue ::
                   forall f s t a b .
                     (Lens.Labels.HasLens "maybe'messageValue" f s t a b) =>
                     Lens.Family2.LensLike f s t a b
maybe'messageValue
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'messageValue")

maybe'oneofBytesValue ::
                      forall f s t a b .
                        (Lens.Labels.HasLens "maybe'oneofBytesValue" f s t a b) =>
                        Lens.Family2.LensLike f s t a b
maybe'oneofBytesValue
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "maybe'oneofBytesValue")

maybe'oneofEnumValue ::
                     forall f s t a b .
                       (Lens.Labels.HasLens "maybe'oneofEnumValue" f s t a b) =>
                       Lens.Family2.LensLike f s t a b
maybe'oneofEnumValue
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "maybe'oneofEnumValue")

maybe'oneofInt32Value ::
                      forall f s t a b .
                        (Lens.Labels.HasLens "maybe'oneofInt32Value" f s t a b) =>
                        Lens.Family2.LensLike f s t a b
maybe'oneofInt32Value
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "maybe'oneofInt32Value")

maybe'oneofMessageValue ::
                        forall f s t a b .
                          (Lens.Labels.HasLens "maybe'oneofMessageValue" f s t a b) =>
                          Lens.Family2.LensLike f s t a b
maybe'oneofMessageValue
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "maybe'oneofMessageValue")

maybe'oneofStringValue ::
                       forall f s t a b .
                         (Lens.Labels.HasLens "maybe'oneofStringValue" f s t a b) =>
                         Lens.Family2.LensLike f s t a b
maybe'oneofStringValue
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "maybe'oneofStringValue")

maybe'value ::
            forall f s t a b . (Lens.Labels.HasLens "maybe'value" f s t a b) =>
              Lens.Family2.LensLike f s t a b
maybe'value
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'value")

messageValue ::
             forall f s t a b .
               (Lens.Labels.HasLens "messageValue" f s t a b) =>
               Lens.Family2.LensLike f s t a b
messageValue
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "messageValue")

oneofBytesValue ::
                forall f s t a b .
                  (Lens.Labels.HasLens "oneofBytesValue" f s t a b) =>
                  Lens.Family2.LensLike f s t a b
oneofBytesValue
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "oneofBytesValue")

oneofEnumValue ::
               forall f s t a b .
                 (Lens.Labels.HasLens "oneofEnumValue" f s t a b) =>
                 Lens.Family2.LensLike f s t a b
oneofEnumValue
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "oneofEnumValue")

oneofInt32Value ::
                forall f s t a b .
                  (Lens.Labels.HasLens "oneofInt32Value" f s t a b) =>
                  Lens.Family2.LensLike f s t a b
oneofInt32Value
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "oneofInt32Value")

oneofMessageValue ::
                  forall f s t a b .
                    (Lens.Labels.HasLens "oneofMessageValue" f s t a b) =>
                    Lens.Family2.LensLike f s t a b
oneofMessageValue
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "oneofMessageValue")

oneofStringValue ::
                 forall f s t a b .
                   (Lens.Labels.HasLens "oneofStringValue" f s t a b) =>
                   Lens.Family2.LensLike f s t a b
oneofStringValue
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "oneofStringValue")

repeatedBoolValue ::
                  forall f s t a b .
                    (Lens.Labels.HasLens "repeatedBoolValue" f s t a b) =>
                    Lens.Family2.LensLike f s t a b
repeatedBoolValue
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "repeatedBoolValue")

repeatedBytesValue ::
                   forall f s t a b .
                     (Lens.Labels.HasLens "repeatedBytesValue" f s t a b) =>
                     Lens.Family2.LensLike f s t a b
repeatedBytesValue
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "repeatedBytesValue")

repeatedDoubleValue ::
                    forall f s t a b .
                      (Lens.Labels.HasLens "repeatedDoubleValue" f s t a b) =>
                      Lens.Family2.LensLike f s t a b
repeatedDoubleValue
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "repeatedDoubleValue")

repeatedEnumValue ::
                  forall f s t a b .
                    (Lens.Labels.HasLens "repeatedEnumValue" f s t a b) =>
                    Lens.Family2.LensLike f s t a b
repeatedEnumValue
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "repeatedEnumValue")

repeatedFloatValue ::
                   forall f s t a b .
                     (Lens.Labels.HasLens "repeatedFloatValue" f s t a b) =>
                     Lens.Family2.LensLike f s t a b
repeatedFloatValue
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "repeatedFloatValue")

repeatedInt32Value ::
                   forall f s t a b .
                     (Lens.Labels.HasLens "repeatedInt32Value" f s t a b) =>
                     Lens.Family2.LensLike f s t a b
repeatedInt32Value
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "repeatedInt32Value")

repeatedInt64Value ::
                   forall f s t a b .
                     (Lens.Labels.HasLens "repeatedInt64Value" f s t a b) =>
                     Lens.Family2.LensLike f s t a b
repeatedInt64Value
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "repeatedInt64Value")

repeatedMessageValue ::
                     forall f s t a b .
                       (Lens.Labels.HasLens "repeatedMessageValue" f s t a b) =>
                       Lens.Family2.LensLike f s t a b
repeatedMessageValue
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "repeatedMessageValue")

repeatedStringValue ::
                    forall f s t a b .
                      (Lens.Labels.HasLens "repeatedStringValue" f s t a b) =>
                      Lens.Family2.LensLike f s t a b
repeatedStringValue
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "repeatedStringValue")

repeatedUint32Value ::
                    forall f s t a b .
                      (Lens.Labels.HasLens "repeatedUint32Value" f s t a b) =>
                      Lens.Family2.LensLike f s t a b
repeatedUint32Value
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "repeatedUint32Value")

repeatedUint64Value ::
                    forall f s t a b .
                      (Lens.Labels.HasLens "repeatedUint64Value" f s t a b) =>
                      Lens.Family2.LensLike f s t a b
repeatedUint64Value
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "repeatedUint64Value")

stringMap ::
          forall f s t a b . (Lens.Labels.HasLens "stringMap" f s t a b) =>
            Lens.Family2.LensLike f s t a b
stringMap
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "stringMap")

stringValue ::
            forall f s t a b . (Lens.Labels.HasLens "stringValue" f s t a b) =>
              Lens.Family2.LensLike f s t a b
stringValue
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "stringValue")

uint32Map ::
          forall f s t a b . (Lens.Labels.HasLens "uint32Map" f s t a b) =>
            Lens.Family2.LensLike f s t a b
uint32Map
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "uint32Map")

uint32Value ::
            forall f s t a b . (Lens.Labels.HasLens "uint32Value" f s t a b) =>
              Lens.Family2.LensLike f s t a b
uint32Value
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "uint32Value")

uint64Map ::
          forall f s t a b . (Lens.Labels.HasLens "uint64Map" f s t a b) =>
            Lens.Family2.LensLike f s t a b
uint64Map
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "uint64Map")

uint64Value ::
            forall f s t a b . (Lens.Labels.HasLens "uint64Value" f s t a b) =>
              Lens.Family2.LensLike f s t a b
uint64Value
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "uint64Value")

value ::
      forall f s t a b . (Lens.Labels.HasLens "value" f s t a b) =>
        Lens.Family2.LensLike f s t a b
value
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "value")