{- This file was auto-generated from json_format_proto3.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.JsonFormatProto3 (
        EnumType(..), EnumType(), EnumType'UnrecognizedValue,
        MessageType(), TestMap(), TestMap'BoolMapEntry(),
        TestMap'Int32MapEntry(), TestMap'Int64MapEntry(),
        TestMap'StringMapEntry(), TestMap'Uint32MapEntry(),
        TestMap'Uint64MapEntry(), TestMessage(), TestNestedMap(),
        TestNestedMap'BoolMapEntry(), TestNestedMap'Int32MapEntry(),
        TestNestedMap'Int64MapEntry(), TestNestedMap'MapMapEntry(),
        TestNestedMap'StringMapEntry(), TestNestedMap'Uint32MapEntry(),
        TestNestedMap'Uint64MapEntry(), TestOneof(),
        TestOneof'OneofValue(..), _TestOneof'OneofInt32Value,
        _TestOneof'OneofStringValue, _TestOneof'OneofBytesValue,
        _TestOneof'OneofEnumValue, _TestOneof'OneofMessageValue
    ) where
import qualified Data.ProtoLens.Runtime.Control.DeepSeq as Control.DeepSeq
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Prism as Data.ProtoLens.Prism
import qualified Data.ProtoLens.Runtime.Prelude as Prelude
import qualified Data.ProtoLens.Runtime.Data.Int as Data.Int
import qualified Data.ProtoLens.Runtime.Data.Monoid as Data.Monoid
import qualified Data.ProtoLens.Runtime.Data.Word as Data.Word
import qualified Data.ProtoLens.Runtime.Data.ProtoLens as Data.ProtoLens
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Bytes as Data.ProtoLens.Encoding.Bytes
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Growing as Data.ProtoLens.Encoding.Growing
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Parser.Unsafe as Data.ProtoLens.Encoding.Parser.Unsafe
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Wire as Data.ProtoLens.Encoding.Wire
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Field as Data.ProtoLens.Field
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Message.Enum as Data.ProtoLens.Message.Enum
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Service.Types as Data.ProtoLens.Service.Types
import qualified Data.ProtoLens.Runtime.Lens.Family2 as Lens.Family2
import qualified Data.ProtoLens.Runtime.Lens.Family2.Unchecked as Lens.Family2.Unchecked
import qualified Data.ProtoLens.Runtime.Data.Text as Data.Text
import qualified Data.ProtoLens.Runtime.Data.Map as Data.Map
import qualified Data.ProtoLens.Runtime.Data.ByteString as Data.ByteString
import qualified Data.ProtoLens.Runtime.Data.ByteString.Char8 as Data.ByteString.Char8
import qualified Data.ProtoLens.Runtime.Data.Text.Encoding as Data.Text.Encoding
import qualified Data.ProtoLens.Runtime.Data.Vector as Data.Vector
import qualified Data.ProtoLens.Runtime.Data.Vector.Generic as Data.Vector.Generic
import qualified Data.ProtoLens.Runtime.Data.Vector.Unboxed as Data.Vector.Unboxed
import qualified Data.ProtoLens.Runtime.Text.Read as Text.Read
newtype EnumType'UnrecognizedValue
  = EnumType'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data EnumType
  = FOO | BAR | EnumType'Unrecognized !EnumType'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
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
  readEnum k
    | (Prelude.==) k "FOO" = Prelude.Just FOO
    | (Prelude.==) k "BAR" = Prelude.Just BAR
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded EnumType where
  minBound = FOO
  maxBound = BAR
instance Prelude.Enum EnumType where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum EnumType: " (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum FOO = 0
  fromEnum BAR = 1
  fromEnum (EnumType'Unrecognized (EnumType'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ BAR
    = Prelude.error
        "EnumType.succ: bad argument BAR. This value would be out of bounds."
  succ FOO = BAR
  succ (EnumType'Unrecognized _)
    = Prelude.error "EnumType.succ: bad argument: unrecognized value"
  pred FOO
    = Prelude.error
        "EnumType.pred: bad argument FOO. This value would be out of bounds."
  pred BAR = FOO
  pred (EnumType'Unrecognized _)
    = Prelude.error "EnumType.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault EnumType where
  fieldDefault = FOO
instance Control.DeepSeq.NFData EnumType where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.JsonFormatProto3_Fields.value' @:: Lens' MessageType Data.Int.Int32@ -}
data MessageType
  = MessageType'_constructor {_MessageType'value :: !Data.Int.Int32,
                              _MessageType'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MessageType where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MessageType "value" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MessageType'value (\ x__ y__ -> x__ {_MessageType'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message MessageType where
  messageName _ = Data.Text.pack "proto3.MessageType"
  packedMessageDescriptor _
    = "\n\
      \\vMessageType\DC2\DC4\n\
      \\ENQvalue\CAN\SOH \SOH(\ENQR\ENQvalue"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"value")) ::
              Data.ProtoLens.FieldDescriptor MessageType
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MessageType'_unknownFields
        (\ x__ y__ -> x__ {_MessageType'_unknownFields = y__})
  defMessage
    = MessageType'_constructor
        {_MessageType'value = Data.ProtoLens.fieldDefault,
         _MessageType'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MessageType -> Data.ProtoLens.Encoding.Bytes.Parser MessageType
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MessageType"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"value") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData MessageType where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MessageType'_unknownFields x__)
             (Control.DeepSeq.deepseq (_MessageType'value x__) ())
{- | Fields :
     
         * 'Proto.JsonFormatProto3_Fields.boolMap' @:: Lens' TestMap (Data.Map.Map Prelude.Bool Data.Int.Int32)@
         * 'Proto.JsonFormatProto3_Fields.int32Map' @:: Lens' TestMap (Data.Map.Map Data.Int.Int32 Data.Int.Int32)@
         * 'Proto.JsonFormatProto3_Fields.int64Map' @:: Lens' TestMap (Data.Map.Map Data.Int.Int64 Data.Int.Int32)@
         * 'Proto.JsonFormatProto3_Fields.uint32Map' @:: Lens' TestMap (Data.Map.Map Data.Word.Word32 Data.Int.Int32)@
         * 'Proto.JsonFormatProto3_Fields.uint64Map' @:: Lens' TestMap (Data.Map.Map Data.Word.Word64 Data.Int.Int32)@
         * 'Proto.JsonFormatProto3_Fields.stringMap' @:: Lens' TestMap (Data.Map.Map Data.Text.Text Data.Int.Int32)@ -}
data TestMap
  = TestMap'_constructor {_TestMap'boolMap :: !(Data.Map.Map Prelude.Bool Data.Int.Int32),
                          _TestMap'int32Map :: !(Data.Map.Map Data.Int.Int32 Data.Int.Int32),
                          _TestMap'int64Map :: !(Data.Map.Map Data.Int.Int64 Data.Int.Int32),
                          _TestMap'uint32Map :: !(Data.Map.Map Data.Word.Word32 Data.Int.Int32),
                          _TestMap'uint64Map :: !(Data.Map.Map Data.Word.Word64 Data.Int.Int32),
                          _TestMap'stringMap :: !(Data.Map.Map Data.Text.Text Data.Int.Int32),
                          _TestMap'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TestMap where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TestMap "boolMap" (Data.Map.Map Prelude.Bool Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestMap'boolMap (\ x__ y__ -> x__ {_TestMap'boolMap = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TestMap "int32Map" (Data.Map.Map Data.Int.Int32 Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestMap'int32Map (\ x__ y__ -> x__ {_TestMap'int32Map = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TestMap "int64Map" (Data.Map.Map Data.Int.Int64 Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestMap'int64Map (\ x__ y__ -> x__ {_TestMap'int64Map = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TestMap "uint32Map" (Data.Map.Map Data.Word.Word32 Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestMap'uint32Map (\ x__ y__ -> x__ {_TestMap'uint32Map = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TestMap "uint64Map" (Data.Map.Map Data.Word.Word64 Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestMap'uint64Map (\ x__ y__ -> x__ {_TestMap'uint64Map = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TestMap "stringMap" (Data.Map.Map Data.Text.Text Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestMap'stringMap (\ x__ y__ -> x__ {_TestMap'stringMap = y__}))
        Prelude.id
instance Data.ProtoLens.Message TestMap where
  messageName _ = Data.Text.pack "proto3.TestMap"
  packedMessageDescriptor _
    = "\n\
      \\aTestMap\DC27\n\
      \\bbool_map\CAN\SOH \ETX(\v2\FS.proto3.TestMap.BoolMapEntryR\aboolMap\DC2:\n\
      \\tint32_map\CAN\STX \ETX(\v2\GS.proto3.TestMap.Int32MapEntryR\bint32Map\DC2:\n\
      \\tint64_map\CAN\ETX \ETX(\v2\GS.proto3.TestMap.Int64MapEntryR\bint64Map\DC2=\n\
      \\n\
      \uint32_map\CAN\EOT \ETX(\v2\RS.proto3.TestMap.Uint32MapEntryR\tuint32Map\DC2=\n\
      \\n\
      \uint64_map\CAN\ENQ \ETX(\v2\RS.proto3.TestMap.Uint64MapEntryR\tuint64Map\DC2=\n\
      \\n\
      \string_map\CAN\ACK \ETX(\v2\RS.proto3.TestMap.StringMapEntryR\tstringMap\SUB:\n\
      \\fBoolMapEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\bR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\ENQR\ENQvalue:\STX8\SOH\SUB;\n\
      \\rInt32MapEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\ENQR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\ENQR\ENQvalue:\STX8\SOH\SUB;\n\
      \\rInt64MapEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\ETXR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\ENQR\ENQvalue:\STX8\SOH\SUB<\n\
      \\SOUint32MapEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\rR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\ENQR\ENQvalue:\STX8\SOH\SUB<\n\
      \\SOUint64MapEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\EOTR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\ENQR\ENQvalue:\STX8\SOH\SUB<\n\
      \\SOStringMapEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\ENQR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        boolMap__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bool_map"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TestMap'BoolMapEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"boolMap")) ::
              Data.ProtoLens.FieldDescriptor TestMap
        int32Map__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "int32_map"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TestMap'Int32MapEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"int32Map")) ::
              Data.ProtoLens.FieldDescriptor TestMap
        int64Map__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "int64_map"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TestMap'Int64MapEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"int64Map")) ::
              Data.ProtoLens.FieldDescriptor TestMap
        uint32Map__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "uint32_map"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TestMap'Uint32MapEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"uint32Map")) ::
              Data.ProtoLens.FieldDescriptor TestMap
        uint64Map__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "uint64_map"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TestMap'Uint64MapEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"uint64Map")) ::
              Data.ProtoLens.FieldDescriptor TestMap
        stringMap__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "string_map"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TestMap'StringMapEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"stringMap")) ::
              Data.ProtoLens.FieldDescriptor TestMap
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, boolMap__field_descriptor),
           (Data.ProtoLens.Tag 2, int32Map__field_descriptor),
           (Data.ProtoLens.Tag 3, int64Map__field_descriptor),
           (Data.ProtoLens.Tag 4, uint32Map__field_descriptor),
           (Data.ProtoLens.Tag 5, uint64Map__field_descriptor),
           (Data.ProtoLens.Tag 6, stringMap__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TestMap'_unknownFields
        (\ x__ y__ -> x__ {_TestMap'_unknownFields = y__})
  defMessage
    = TestMap'_constructor
        {_TestMap'boolMap = Data.Map.empty,
         _TestMap'int32Map = Data.Map.empty,
         _TestMap'int64Map = Data.Map.empty,
         _TestMap'uint32Map = Data.Map.empty,
         _TestMap'uint64Map = Data.Map.empty,
         _TestMap'stringMap = Data.Map.empty, _TestMap'_unknownFields = []}
  parseMessage
    = let
        loop :: TestMap -> Data.ProtoLens.Encoding.Bytes.Parser TestMap
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !(entry :: TestMap'BoolMapEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                      (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                          Data.ProtoLens.Encoding.Bytes.isolate
                                                                            (Prelude.fromIntegral
                                                                               len)
                                                                            Data.ProtoLens.parseMessage)
                                                                      "bool_map"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"boolMap")
                                        (\ !t -> Data.Map.insert key value t) x))
                        18
                          -> do !(entry :: TestMap'Int32MapEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                           Data.ProtoLens.Encoding.Bytes.isolate
                                                                             (Prelude.fromIntegral
                                                                                len)
                                                                             Data.ProtoLens.parseMessage)
                                                                       "int32_map"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"int32Map")
                                        (\ !t -> Data.Map.insert key value t) x))
                        26
                          -> do !(entry :: TestMap'Int64MapEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                           Data.ProtoLens.Encoding.Bytes.isolate
                                                                             (Prelude.fromIntegral
                                                                                len)
                                                                             Data.ProtoLens.parseMessage)
                                                                       "int64_map"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"int64Map")
                                        (\ !t -> Data.Map.insert key value t) x))
                        34
                          -> do !(entry :: TestMap'Uint32MapEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                            Data.ProtoLens.Encoding.Bytes.isolate
                                                                              (Prelude.fromIntegral
                                                                                 len)
                                                                              Data.ProtoLens.parseMessage)
                                                                        "uint32_map"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"uint32Map")
                                        (\ !t -> Data.Map.insert key value t) x))
                        42
                          -> do !(entry :: TestMap'Uint64MapEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                            Data.ProtoLens.Encoding.Bytes.isolate
                                                                              (Prelude.fromIntegral
                                                                                 len)
                                                                              Data.ProtoLens.parseMessage)
                                                                        "uint64_map"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"uint64Map")
                                        (\ !t -> Data.Map.insert key value t) x))
                        50
                          -> do !(entry :: TestMap'StringMapEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                            Data.ProtoLens.Encoding.Bytes.isolate
                                                                              (Prelude.fromIntegral
                                                                                 len)
                                                                              Data.ProtoLens.parseMessage)
                                                                        "string_map"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"stringMap")
                                        (\ !t -> Data.Map.insert key value t) x))
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TestMap"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (Data.Monoid.mconcat
                (Prelude.map
                   (\ _v
                      -> (Data.Monoid.<>)
                           (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                           ((Prelude..)
                              (\ bs
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                         (Prelude.fromIntegral (Data.ByteString.length bs)))
                                      (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                              Data.ProtoLens.encodeMessage
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"key") (Prelude.fst _v)
                                 (Lens.Family2.set
                                    (Data.ProtoLens.Field.field @"value") (Prelude.snd _v)
                                    (Data.ProtoLens.defMessage :: TestMap'BoolMapEntry)))))
                   (Data.Map.toList
                      (Lens.Family2.view (Data.ProtoLens.Field.field @"boolMap") _x))))
             ((Data.Monoid.<>)
                (Data.Monoid.mconcat
                   (Prelude.map
                      (\ _v
                         -> (Data.Monoid.<>)
                              (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                              ((Prelude..)
                                 (\ bs
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                            (Prelude.fromIntegral (Data.ByteString.length bs)))
                                         (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                 Data.ProtoLens.encodeMessage
                                 (Lens.Family2.set
                                    (Data.ProtoLens.Field.field @"key") (Prelude.fst _v)
                                    (Lens.Family2.set
                                       (Data.ProtoLens.Field.field @"value") (Prelude.snd _v)
                                       (Data.ProtoLens.defMessage :: TestMap'Int32MapEntry)))))
                      (Data.Map.toList
                         (Lens.Family2.view (Data.ProtoLens.Field.field @"int32Map") _x))))
                ((Data.Monoid.<>)
                   (Data.Monoid.mconcat
                      (Prelude.map
                         (\ _v
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                                 ((Prelude..)
                                    (\ bs
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                                               (Prelude.fromIntegral (Data.ByteString.length bs)))
                                            (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                    Data.ProtoLens.encodeMessage
                                    (Lens.Family2.set
                                       (Data.ProtoLens.Field.field @"key") (Prelude.fst _v)
                                       (Lens.Family2.set
                                          (Data.ProtoLens.Field.field @"value") (Prelude.snd _v)
                                          (Data.ProtoLens.defMessage :: TestMap'Int64MapEntry)))))
                         (Data.Map.toList
                            (Lens.Family2.view (Data.ProtoLens.Field.field @"int64Map") _x))))
                   ((Data.Monoid.<>)
                      (Data.Monoid.mconcat
                         (Prelude.map
                            (\ _v
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                                    ((Prelude..)
                                       (\ bs
                                          -> (Data.Monoid.<>)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                  (Prelude.fromIntegral
                                                     (Data.ByteString.length bs)))
                                               (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                       Data.ProtoLens.encodeMessage
                                       (Lens.Family2.set
                                          (Data.ProtoLens.Field.field @"key") (Prelude.fst _v)
                                          (Lens.Family2.set
                                             (Data.ProtoLens.Field.field @"value") (Prelude.snd _v)
                                             (Data.ProtoLens.defMessage ::
                                                TestMap'Uint32MapEntry)))))
                            (Data.Map.toList
                               (Lens.Family2.view (Data.ProtoLens.Field.field @"uint32Map") _x))))
                      ((Data.Monoid.<>)
                         (Data.Monoid.mconcat
                            (Prelude.map
                               (\ _v
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                       ((Prelude..)
                                          (\ bs
                                             -> (Data.Monoid.<>)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                     (Prelude.fromIntegral
                                                        (Data.ByteString.length bs)))
                                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                          Data.ProtoLens.encodeMessage
                                          (Lens.Family2.set
                                             (Data.ProtoLens.Field.field @"key") (Prelude.fst _v)
                                             (Lens.Family2.set
                                                (Data.ProtoLens.Field.field @"value")
                                                (Prelude.snd _v)
                                                (Data.ProtoLens.defMessage ::
                                                   TestMap'Uint64MapEntry)))))
                               (Data.Map.toList
                                  (Lens.Family2.view
                                     (Data.ProtoLens.Field.field @"uint64Map") _x))))
                         ((Data.Monoid.<>)
                            (Data.Monoid.mconcat
                               (Prelude.map
                                  (\ _v
                                     -> (Data.Monoid.<>)
                                          (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                                          ((Prelude..)
                                             (\ bs
                                                -> (Data.Monoid.<>)
                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                        (Prelude.fromIntegral
                                                           (Data.ByteString.length bs)))
                                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                             Data.ProtoLens.encodeMessage
                                             (Lens.Family2.set
                                                (Data.ProtoLens.Field.field @"key") (Prelude.fst _v)
                                                (Lens.Family2.set
                                                   (Data.ProtoLens.Field.field @"value")
                                                   (Prelude.snd _v)
                                                   (Data.ProtoLens.defMessage ::
                                                      TestMap'StringMapEntry)))))
                                  (Data.Map.toList
                                     (Lens.Family2.view
                                        (Data.ProtoLens.Field.field @"stringMap") _x))))
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData TestMap where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TestMap'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TestMap'boolMap x__)
                (Control.DeepSeq.deepseq
                   (_TestMap'int32Map x__)
                   (Control.DeepSeq.deepseq
                      (_TestMap'int64Map x__)
                      (Control.DeepSeq.deepseq
                         (_TestMap'uint32Map x__)
                         (Control.DeepSeq.deepseq
                            (_TestMap'uint64Map x__)
                            (Control.DeepSeq.deepseq (_TestMap'stringMap x__) ()))))))
{- | Fields :
     
         * 'Proto.JsonFormatProto3_Fields.key' @:: Lens' TestMap'BoolMapEntry Prelude.Bool@
         * 'Proto.JsonFormatProto3_Fields.value' @:: Lens' TestMap'BoolMapEntry Data.Int.Int32@ -}
data TestMap'BoolMapEntry
  = TestMap'BoolMapEntry'_constructor {_TestMap'BoolMapEntry'key :: !Prelude.Bool,
                                       _TestMap'BoolMapEntry'value :: !Data.Int.Int32,
                                       _TestMap'BoolMapEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TestMap'BoolMapEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TestMap'BoolMapEntry "key" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestMap'BoolMapEntry'key
           (\ x__ y__ -> x__ {_TestMap'BoolMapEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TestMap'BoolMapEntry "value" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestMap'BoolMapEntry'value
           (\ x__ y__ -> x__ {_TestMap'BoolMapEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message TestMap'BoolMapEntry where
  messageName _ = Data.Text.pack "proto3.TestMap.BoolMapEntry"
  packedMessageDescriptor _
    = "\n\
      \\fBoolMapEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\bR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\ENQR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"key")) ::
              Data.ProtoLens.FieldDescriptor TestMap'BoolMapEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"value")) ::
              Data.ProtoLens.FieldDescriptor TestMap'BoolMapEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TestMap'BoolMapEntry'_unknownFields
        (\ x__ y__ -> x__ {_TestMap'BoolMapEntry'_unknownFields = y__})
  defMessage
    = TestMap'BoolMapEntry'_constructor
        {_TestMap'BoolMapEntry'key = Data.ProtoLens.fieldDefault,
         _TestMap'BoolMapEntry'value = Data.ProtoLens.fieldDefault,
         _TestMap'BoolMapEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TestMap'BoolMapEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser TestMap'BoolMapEntry
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "BoolMapEntry"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"key") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt (\ b -> if b then 1 else 0)
                         _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"value") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData TestMap'BoolMapEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TestMap'BoolMapEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TestMap'BoolMapEntry'key x__)
                (Control.DeepSeq.deepseq (_TestMap'BoolMapEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.JsonFormatProto3_Fields.key' @:: Lens' TestMap'Int32MapEntry Data.Int.Int32@
         * 'Proto.JsonFormatProto3_Fields.value' @:: Lens' TestMap'Int32MapEntry Data.Int.Int32@ -}
data TestMap'Int32MapEntry
  = TestMap'Int32MapEntry'_constructor {_TestMap'Int32MapEntry'key :: !Data.Int.Int32,
                                        _TestMap'Int32MapEntry'value :: !Data.Int.Int32,
                                        _TestMap'Int32MapEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TestMap'Int32MapEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TestMap'Int32MapEntry "key" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestMap'Int32MapEntry'key
           (\ x__ y__ -> x__ {_TestMap'Int32MapEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TestMap'Int32MapEntry "value" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestMap'Int32MapEntry'value
           (\ x__ y__ -> x__ {_TestMap'Int32MapEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message TestMap'Int32MapEntry where
  messageName _ = Data.Text.pack "proto3.TestMap.Int32MapEntry"
  packedMessageDescriptor _
    = "\n\
      \\rInt32MapEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\ENQR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\ENQR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"key")) ::
              Data.ProtoLens.FieldDescriptor TestMap'Int32MapEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"value")) ::
              Data.ProtoLens.FieldDescriptor TestMap'Int32MapEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TestMap'Int32MapEntry'_unknownFields
        (\ x__ y__ -> x__ {_TestMap'Int32MapEntry'_unknownFields = y__})
  defMessage
    = TestMap'Int32MapEntry'_constructor
        {_TestMap'Int32MapEntry'key = Data.ProtoLens.fieldDefault,
         _TestMap'Int32MapEntry'value = Data.ProtoLens.fieldDefault,
         _TestMap'Int32MapEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TestMap'Int32MapEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser TestMap'Int32MapEntry
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Int32MapEntry"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"key") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"value") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData TestMap'Int32MapEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TestMap'Int32MapEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TestMap'Int32MapEntry'key x__)
                (Control.DeepSeq.deepseq (_TestMap'Int32MapEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.JsonFormatProto3_Fields.key' @:: Lens' TestMap'Int64MapEntry Data.Int.Int64@
         * 'Proto.JsonFormatProto3_Fields.value' @:: Lens' TestMap'Int64MapEntry Data.Int.Int32@ -}
data TestMap'Int64MapEntry
  = TestMap'Int64MapEntry'_constructor {_TestMap'Int64MapEntry'key :: !Data.Int.Int64,
                                        _TestMap'Int64MapEntry'value :: !Data.Int.Int32,
                                        _TestMap'Int64MapEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TestMap'Int64MapEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TestMap'Int64MapEntry "key" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestMap'Int64MapEntry'key
           (\ x__ y__ -> x__ {_TestMap'Int64MapEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TestMap'Int64MapEntry "value" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestMap'Int64MapEntry'value
           (\ x__ y__ -> x__ {_TestMap'Int64MapEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message TestMap'Int64MapEntry where
  messageName _ = Data.Text.pack "proto3.TestMap.Int64MapEntry"
  packedMessageDescriptor _
    = "\n\
      \\rInt64MapEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\ETXR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\ENQR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"key")) ::
              Data.ProtoLens.FieldDescriptor TestMap'Int64MapEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"value")) ::
              Data.ProtoLens.FieldDescriptor TestMap'Int64MapEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TestMap'Int64MapEntry'_unknownFields
        (\ x__ y__ -> x__ {_TestMap'Int64MapEntry'_unknownFields = y__})
  defMessage
    = TestMap'Int64MapEntry'_constructor
        {_TestMap'Int64MapEntry'key = Data.ProtoLens.fieldDefault,
         _TestMap'Int64MapEntry'value = Data.ProtoLens.fieldDefault,
         _TestMap'Int64MapEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TestMap'Int64MapEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser TestMap'Int64MapEntry
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Int64MapEntry"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"key") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"value") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData TestMap'Int64MapEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TestMap'Int64MapEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TestMap'Int64MapEntry'key x__)
                (Control.DeepSeq.deepseq (_TestMap'Int64MapEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.JsonFormatProto3_Fields.key' @:: Lens' TestMap'StringMapEntry Data.Text.Text@
         * 'Proto.JsonFormatProto3_Fields.value' @:: Lens' TestMap'StringMapEntry Data.Int.Int32@ -}
data TestMap'StringMapEntry
  = TestMap'StringMapEntry'_constructor {_TestMap'StringMapEntry'key :: !Data.Text.Text,
                                         _TestMap'StringMapEntry'value :: !Data.Int.Int32,
                                         _TestMap'StringMapEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TestMap'StringMapEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TestMap'StringMapEntry "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestMap'StringMapEntry'key
           (\ x__ y__ -> x__ {_TestMap'StringMapEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TestMap'StringMapEntry "value" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestMap'StringMapEntry'value
           (\ x__ y__ -> x__ {_TestMap'StringMapEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message TestMap'StringMapEntry where
  messageName _ = Data.Text.pack "proto3.TestMap.StringMapEntry"
  packedMessageDescriptor _
    = "\n\
      \\SOStringMapEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\ENQR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"key")) ::
              Data.ProtoLens.FieldDescriptor TestMap'StringMapEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"value")) ::
              Data.ProtoLens.FieldDescriptor TestMap'StringMapEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TestMap'StringMapEntry'_unknownFields
        (\ x__ y__ -> x__ {_TestMap'StringMapEntry'_unknownFields = y__})
  defMessage
    = TestMap'StringMapEntry'_constructor
        {_TestMap'StringMapEntry'key = Data.ProtoLens.fieldDefault,
         _TestMap'StringMapEntry'value = Data.ProtoLens.fieldDefault,
         _TestMap'StringMapEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TestMap'StringMapEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser TestMap'StringMapEntry
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "StringMapEntry"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"key") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8 _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"value") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData TestMap'StringMapEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TestMap'StringMapEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TestMap'StringMapEntry'key x__)
                (Control.DeepSeq.deepseq (_TestMap'StringMapEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.JsonFormatProto3_Fields.key' @:: Lens' TestMap'Uint32MapEntry Data.Word.Word32@
         * 'Proto.JsonFormatProto3_Fields.value' @:: Lens' TestMap'Uint32MapEntry Data.Int.Int32@ -}
data TestMap'Uint32MapEntry
  = TestMap'Uint32MapEntry'_constructor {_TestMap'Uint32MapEntry'key :: !Data.Word.Word32,
                                         _TestMap'Uint32MapEntry'value :: !Data.Int.Int32,
                                         _TestMap'Uint32MapEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TestMap'Uint32MapEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TestMap'Uint32MapEntry "key" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestMap'Uint32MapEntry'key
           (\ x__ y__ -> x__ {_TestMap'Uint32MapEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TestMap'Uint32MapEntry "value" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestMap'Uint32MapEntry'value
           (\ x__ y__ -> x__ {_TestMap'Uint32MapEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message TestMap'Uint32MapEntry where
  messageName _ = Data.Text.pack "proto3.TestMap.Uint32MapEntry"
  packedMessageDescriptor _
    = "\n\
      \\SOUint32MapEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\rR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\ENQR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"key")) ::
              Data.ProtoLens.FieldDescriptor TestMap'Uint32MapEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"value")) ::
              Data.ProtoLens.FieldDescriptor TestMap'Uint32MapEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TestMap'Uint32MapEntry'_unknownFields
        (\ x__ y__ -> x__ {_TestMap'Uint32MapEntry'_unknownFields = y__})
  defMessage
    = TestMap'Uint32MapEntry'_constructor
        {_TestMap'Uint32MapEntry'key = Data.ProtoLens.fieldDefault,
         _TestMap'Uint32MapEntry'value = Data.ProtoLens.fieldDefault,
         _TestMap'Uint32MapEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TestMap'Uint32MapEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser TestMap'Uint32MapEntry
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Uint32MapEntry"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"key") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"value") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData TestMap'Uint32MapEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TestMap'Uint32MapEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TestMap'Uint32MapEntry'key x__)
                (Control.DeepSeq.deepseq (_TestMap'Uint32MapEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.JsonFormatProto3_Fields.key' @:: Lens' TestMap'Uint64MapEntry Data.Word.Word64@
         * 'Proto.JsonFormatProto3_Fields.value' @:: Lens' TestMap'Uint64MapEntry Data.Int.Int32@ -}
data TestMap'Uint64MapEntry
  = TestMap'Uint64MapEntry'_constructor {_TestMap'Uint64MapEntry'key :: !Data.Word.Word64,
                                         _TestMap'Uint64MapEntry'value :: !Data.Int.Int32,
                                         _TestMap'Uint64MapEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TestMap'Uint64MapEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TestMap'Uint64MapEntry "key" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestMap'Uint64MapEntry'key
           (\ x__ y__ -> x__ {_TestMap'Uint64MapEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TestMap'Uint64MapEntry "value" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestMap'Uint64MapEntry'value
           (\ x__ y__ -> x__ {_TestMap'Uint64MapEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message TestMap'Uint64MapEntry where
  messageName _ = Data.Text.pack "proto3.TestMap.Uint64MapEntry"
  packedMessageDescriptor _
    = "\n\
      \\SOUint64MapEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\EOTR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\ENQR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"key")) ::
              Data.ProtoLens.FieldDescriptor TestMap'Uint64MapEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"value")) ::
              Data.ProtoLens.FieldDescriptor TestMap'Uint64MapEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TestMap'Uint64MapEntry'_unknownFields
        (\ x__ y__ -> x__ {_TestMap'Uint64MapEntry'_unknownFields = y__})
  defMessage
    = TestMap'Uint64MapEntry'_constructor
        {_TestMap'Uint64MapEntry'key = Data.ProtoLens.fieldDefault,
         _TestMap'Uint64MapEntry'value = Data.ProtoLens.fieldDefault,
         _TestMap'Uint64MapEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TestMap'Uint64MapEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser TestMap'Uint64MapEntry
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Uint64MapEntry"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"key") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"value") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData TestMap'Uint64MapEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TestMap'Uint64MapEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TestMap'Uint64MapEntry'key x__)
                (Control.DeepSeq.deepseq (_TestMap'Uint64MapEntry'value x__) ()))
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
         * 'Proto.JsonFormatProto3_Fields.vec'repeatedBoolValue' @:: Lens' TestMessage (Data.Vector.Unboxed.Vector Prelude.Bool)@
         * 'Proto.JsonFormatProto3_Fields.repeatedInt32Value' @:: Lens' TestMessage [Data.Int.Int32]@
         * 'Proto.JsonFormatProto3_Fields.vec'repeatedInt32Value' @:: Lens' TestMessage (Data.Vector.Unboxed.Vector Data.Int.Int32)@
         * 'Proto.JsonFormatProto3_Fields.repeatedInt64Value' @:: Lens' TestMessage [Data.Int.Int64]@
         * 'Proto.JsonFormatProto3_Fields.vec'repeatedInt64Value' @:: Lens' TestMessage (Data.Vector.Unboxed.Vector Data.Int.Int64)@
         * 'Proto.JsonFormatProto3_Fields.repeatedUint32Value' @:: Lens' TestMessage [Data.Word.Word32]@
         * 'Proto.JsonFormatProto3_Fields.vec'repeatedUint32Value' @:: Lens' TestMessage (Data.Vector.Unboxed.Vector Data.Word.Word32)@
         * 'Proto.JsonFormatProto3_Fields.repeatedUint64Value' @:: Lens' TestMessage [Data.Word.Word64]@
         * 'Proto.JsonFormatProto3_Fields.vec'repeatedUint64Value' @:: Lens' TestMessage (Data.Vector.Unboxed.Vector Data.Word.Word64)@
         * 'Proto.JsonFormatProto3_Fields.repeatedFloatValue' @:: Lens' TestMessage [Prelude.Float]@
         * 'Proto.JsonFormatProto3_Fields.vec'repeatedFloatValue' @:: Lens' TestMessage (Data.Vector.Unboxed.Vector Prelude.Float)@
         * 'Proto.JsonFormatProto3_Fields.repeatedDoubleValue' @:: Lens' TestMessage [Prelude.Double]@
         * 'Proto.JsonFormatProto3_Fields.vec'repeatedDoubleValue' @:: Lens' TestMessage (Data.Vector.Unboxed.Vector Prelude.Double)@
         * 'Proto.JsonFormatProto3_Fields.repeatedStringValue' @:: Lens' TestMessage [Data.Text.Text]@
         * 'Proto.JsonFormatProto3_Fields.vec'repeatedStringValue' @:: Lens' TestMessage (Data.Vector.Vector Data.Text.Text)@
         * 'Proto.JsonFormatProto3_Fields.repeatedBytesValue' @:: Lens' TestMessage [Data.ByteString.ByteString]@
         * 'Proto.JsonFormatProto3_Fields.vec'repeatedBytesValue' @:: Lens' TestMessage (Data.Vector.Vector Data.ByteString.ByteString)@
         * 'Proto.JsonFormatProto3_Fields.repeatedEnumValue' @:: Lens' TestMessage [EnumType]@
         * 'Proto.JsonFormatProto3_Fields.vec'repeatedEnumValue' @:: Lens' TestMessage (Data.Vector.Vector EnumType)@
         * 'Proto.JsonFormatProto3_Fields.repeatedMessageValue' @:: Lens' TestMessage [MessageType]@
         * 'Proto.JsonFormatProto3_Fields.vec'repeatedMessageValue' @:: Lens' TestMessage (Data.Vector.Vector MessageType)@ -}
data TestMessage
  = TestMessage'_constructor {_TestMessage'boolValue :: !Prelude.Bool,
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
                              _TestMessage'repeatedBoolValue :: !(Data.Vector.Unboxed.Vector Prelude.Bool),
                              _TestMessage'repeatedInt32Value :: !(Data.Vector.Unboxed.Vector Data.Int.Int32),
                              _TestMessage'repeatedInt64Value :: !(Data.Vector.Unboxed.Vector Data.Int.Int64),
                              _TestMessage'repeatedUint32Value :: !(Data.Vector.Unboxed.Vector Data.Word.Word32),
                              _TestMessage'repeatedUint64Value :: !(Data.Vector.Unboxed.Vector Data.Word.Word64),
                              _TestMessage'repeatedFloatValue :: !(Data.Vector.Unboxed.Vector Prelude.Float),
                              _TestMessage'repeatedDoubleValue :: !(Data.Vector.Unboxed.Vector Prelude.Double),
                              _TestMessage'repeatedStringValue :: !(Data.Vector.Vector Data.Text.Text),
                              _TestMessage'repeatedBytesValue :: !(Data.Vector.Vector Data.ByteString.ByteString),
                              _TestMessage'repeatedEnumValue :: !(Data.Vector.Vector EnumType),
                              _TestMessage'repeatedMessageValue :: !(Data.Vector.Vector MessageType),
                              _TestMessage'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TestMessage where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TestMessage "boolValue" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestMessage'boolValue
           (\ x__ y__ -> x__ {_TestMessage'boolValue = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TestMessage "int32Value" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestMessage'int32Value
           (\ x__ y__ -> x__ {_TestMessage'int32Value = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TestMessage "int64Value" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestMessage'int64Value
           (\ x__ y__ -> x__ {_TestMessage'int64Value = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TestMessage "uint32Value" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestMessage'uint32Value
           (\ x__ y__ -> x__ {_TestMessage'uint32Value = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TestMessage "uint64Value" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestMessage'uint64Value
           (\ x__ y__ -> x__ {_TestMessage'uint64Value = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TestMessage "floatValue" Prelude.Float where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestMessage'floatValue
           (\ x__ y__ -> x__ {_TestMessage'floatValue = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TestMessage "doubleValue" Prelude.Double where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestMessage'doubleValue
           (\ x__ y__ -> x__ {_TestMessage'doubleValue = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TestMessage "stringValue" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestMessage'stringValue
           (\ x__ y__ -> x__ {_TestMessage'stringValue = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TestMessage "bytesValue" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestMessage'bytesValue
           (\ x__ y__ -> x__ {_TestMessage'bytesValue = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TestMessage "enumValue" EnumType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestMessage'enumValue
           (\ x__ y__ -> x__ {_TestMessage'enumValue = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TestMessage "messageValue" MessageType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestMessage'messageValue
           (\ x__ y__ -> x__ {_TestMessage'messageValue = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TestMessage "maybe'messageValue" (Prelude.Maybe MessageType) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestMessage'messageValue
           (\ x__ y__ -> x__ {_TestMessage'messageValue = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TestMessage "repeatedBoolValue" [Prelude.Bool] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestMessage'repeatedBoolValue
           (\ x__ y__ -> x__ {_TestMessage'repeatedBoolValue = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField TestMessage "vec'repeatedBoolValue" (Data.Vector.Unboxed.Vector Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestMessage'repeatedBoolValue
           (\ x__ y__ -> x__ {_TestMessage'repeatedBoolValue = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TestMessage "repeatedInt32Value" [Data.Int.Int32] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestMessage'repeatedInt32Value
           (\ x__ y__ -> x__ {_TestMessage'repeatedInt32Value = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField TestMessage "vec'repeatedInt32Value" (Data.Vector.Unboxed.Vector Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestMessage'repeatedInt32Value
           (\ x__ y__ -> x__ {_TestMessage'repeatedInt32Value = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TestMessage "repeatedInt64Value" [Data.Int.Int64] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestMessage'repeatedInt64Value
           (\ x__ y__ -> x__ {_TestMessage'repeatedInt64Value = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField TestMessage "vec'repeatedInt64Value" (Data.Vector.Unboxed.Vector Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestMessage'repeatedInt64Value
           (\ x__ y__ -> x__ {_TestMessage'repeatedInt64Value = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TestMessage "repeatedUint32Value" [Data.Word.Word32] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestMessage'repeatedUint32Value
           (\ x__ y__ -> x__ {_TestMessage'repeatedUint32Value = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField TestMessage "vec'repeatedUint32Value" (Data.Vector.Unboxed.Vector Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestMessage'repeatedUint32Value
           (\ x__ y__ -> x__ {_TestMessage'repeatedUint32Value = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TestMessage "repeatedUint64Value" [Data.Word.Word64] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestMessage'repeatedUint64Value
           (\ x__ y__ -> x__ {_TestMessage'repeatedUint64Value = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField TestMessage "vec'repeatedUint64Value" (Data.Vector.Unboxed.Vector Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestMessage'repeatedUint64Value
           (\ x__ y__ -> x__ {_TestMessage'repeatedUint64Value = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TestMessage "repeatedFloatValue" [Prelude.Float] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestMessage'repeatedFloatValue
           (\ x__ y__ -> x__ {_TestMessage'repeatedFloatValue = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField TestMessage "vec'repeatedFloatValue" (Data.Vector.Unboxed.Vector Prelude.Float) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestMessage'repeatedFloatValue
           (\ x__ y__ -> x__ {_TestMessage'repeatedFloatValue = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TestMessage "repeatedDoubleValue" [Prelude.Double] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestMessage'repeatedDoubleValue
           (\ x__ y__ -> x__ {_TestMessage'repeatedDoubleValue = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField TestMessage "vec'repeatedDoubleValue" (Data.Vector.Unboxed.Vector Prelude.Double) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestMessage'repeatedDoubleValue
           (\ x__ y__ -> x__ {_TestMessage'repeatedDoubleValue = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TestMessage "repeatedStringValue" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestMessage'repeatedStringValue
           (\ x__ y__ -> x__ {_TestMessage'repeatedStringValue = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField TestMessage "vec'repeatedStringValue" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestMessage'repeatedStringValue
           (\ x__ y__ -> x__ {_TestMessage'repeatedStringValue = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TestMessage "repeatedBytesValue" [Data.ByteString.ByteString] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestMessage'repeatedBytesValue
           (\ x__ y__ -> x__ {_TestMessage'repeatedBytesValue = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField TestMessage "vec'repeatedBytesValue" (Data.Vector.Vector Data.ByteString.ByteString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestMessage'repeatedBytesValue
           (\ x__ y__ -> x__ {_TestMessage'repeatedBytesValue = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TestMessage "repeatedEnumValue" [EnumType] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestMessage'repeatedEnumValue
           (\ x__ y__ -> x__ {_TestMessage'repeatedEnumValue = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField TestMessage "vec'repeatedEnumValue" (Data.Vector.Vector EnumType) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestMessage'repeatedEnumValue
           (\ x__ y__ -> x__ {_TestMessage'repeatedEnumValue = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TestMessage "repeatedMessageValue" [MessageType] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestMessage'repeatedMessageValue
           (\ x__ y__ -> x__ {_TestMessage'repeatedMessageValue = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField TestMessage "vec'repeatedMessageValue" (Data.Vector.Vector MessageType) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestMessage'repeatedMessageValue
           (\ x__ y__ -> x__ {_TestMessage'repeatedMessageValue = y__}))
        Prelude.id
instance Data.ProtoLens.Message TestMessage where
  messageName _ = Data.Text.pack "proto3.TestMessage"
  packedMessageDescriptor _
    = "\n\
      \\vTestMessage\DC2\GS\n\
      \\n\
      \bool_value\CAN\SOH \SOH(\bR\tboolValue\DC2\US\n\
      \\vint32_value\CAN\STX \SOH(\ENQR\n\
      \int32Value\DC2\US\n\
      \\vint64_value\CAN\ETX \SOH(\ETXR\n\
      \int64Value\DC2!\n\
      \\fuint32_value\CAN\EOT \SOH(\rR\vuint32Value\DC2!\n\
      \\fuint64_value\CAN\ENQ \SOH(\EOTR\vuint64Value\DC2\US\n\
      \\vfloat_value\CAN\ACK \SOH(\STXR\n\
      \floatValue\DC2!\n\
      \\fdouble_value\CAN\a \SOH(\SOHR\vdoubleValue\DC2!\n\
      \\fstring_value\CAN\b \SOH(\tR\vstringValue\DC2\US\n\
      \\vbytes_value\CAN\t \SOH(\fR\n\
      \bytesValue\DC2/\n\
      \\n\
      \enum_value\CAN\n\
      \ \SOH(\SO2\DLE.proto3.EnumTypeR\tenumValue\DC28\n\
      \\rmessage_value\CAN\v \SOH(\v2\DC3.proto3.MessageTypeR\fmessageValue\DC2.\n\
      \\DC3repeated_bool_value\CAN\NAK \ETX(\bR\DC1repeatedBoolValue\DC20\n\
      \\DC4repeated_int32_value\CAN\SYN \ETX(\ENQR\DC2repeatedInt32Value\DC20\n\
      \\DC4repeated_int64_value\CAN\ETB \ETX(\ETXR\DC2repeatedInt64Value\DC22\n\
      \\NAKrepeated_uint32_value\CAN\CAN \ETX(\rR\DC3repeatedUint32Value\DC22\n\
      \\NAKrepeated_uint64_value\CAN\EM \ETX(\EOTR\DC3repeatedUint64Value\DC20\n\
      \\DC4repeated_float_value\CAN\SUB \ETX(\STXR\DC2repeatedFloatValue\DC22\n\
      \\NAKrepeated_double_value\CAN\ESC \ETX(\SOHR\DC3repeatedDoubleValue\DC22\n\
      \\NAKrepeated_string_value\CAN\FS \ETX(\tR\DC3repeatedStringValue\DC20\n\
      \\DC4repeated_bytes_value\CAN\GS \ETX(\fR\DC2repeatedBytesValue\DC2@\n\
      \\DC3repeated_enum_value\CAN\RS \ETX(\SO2\DLE.proto3.EnumTypeR\DC1repeatedEnumValue\DC2I\n\
      \\SYNrepeated_message_value\CAN\US \ETX(\v2\DC3.proto3.MessageTypeR\DC4repeatedMessageValue"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        boolValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bool_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"boolValue")) ::
              Data.ProtoLens.FieldDescriptor TestMessage
        int32Value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "int32_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"int32Value")) ::
              Data.ProtoLens.FieldDescriptor TestMessage
        int64Value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "int64_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"int64Value")) ::
              Data.ProtoLens.FieldDescriptor TestMessage
        uint32Value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "uint32_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"uint32Value")) ::
              Data.ProtoLens.FieldDescriptor TestMessage
        uint64Value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "uint64_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"uint64Value")) ::
              Data.ProtoLens.FieldDescriptor TestMessage
        floatValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "float_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.FloatField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Float)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"floatValue")) ::
              Data.ProtoLens.FieldDescriptor TestMessage
        doubleValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "double_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.DoubleField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Double)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"doubleValue")) ::
              Data.ProtoLens.FieldDescriptor TestMessage
        stringValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "string_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"stringValue")) ::
              Data.ProtoLens.FieldDescriptor TestMessage
        bytesValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bytes_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"bytesValue")) ::
              Data.ProtoLens.FieldDescriptor TestMessage
        enumValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "enum_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor EnumType)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"enumValue")) ::
              Data.ProtoLens.FieldDescriptor TestMessage
        messageValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "message_value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor MessageType)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'messageValue")) ::
              Data.ProtoLens.FieldDescriptor TestMessage
        repeatedBoolValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "repeated_bool_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Packed
                 (Data.ProtoLens.Field.field @"repeatedBoolValue")) ::
              Data.ProtoLens.FieldDescriptor TestMessage
        repeatedInt32Value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "repeated_int32_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Packed
                 (Data.ProtoLens.Field.field @"repeatedInt32Value")) ::
              Data.ProtoLens.FieldDescriptor TestMessage
        repeatedInt64Value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "repeated_int64_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Packed
                 (Data.ProtoLens.Field.field @"repeatedInt64Value")) ::
              Data.ProtoLens.FieldDescriptor TestMessage
        repeatedUint32Value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "repeated_uint32_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Packed
                 (Data.ProtoLens.Field.field @"repeatedUint32Value")) ::
              Data.ProtoLens.FieldDescriptor TestMessage
        repeatedUint64Value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "repeated_uint64_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Packed
                 (Data.ProtoLens.Field.field @"repeatedUint64Value")) ::
              Data.ProtoLens.FieldDescriptor TestMessage
        repeatedFloatValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "repeated_float_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.FloatField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Float)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Packed
                 (Data.ProtoLens.Field.field @"repeatedFloatValue")) ::
              Data.ProtoLens.FieldDescriptor TestMessage
        repeatedDoubleValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "repeated_double_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.DoubleField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Double)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Packed
                 (Data.ProtoLens.Field.field @"repeatedDoubleValue")) ::
              Data.ProtoLens.FieldDescriptor TestMessage
        repeatedStringValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "repeated_string_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"repeatedStringValue")) ::
              Data.ProtoLens.FieldDescriptor TestMessage
        repeatedBytesValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "repeated_bytes_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"repeatedBytesValue")) ::
              Data.ProtoLens.FieldDescriptor TestMessage
        repeatedEnumValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "repeated_enum_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor EnumType)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Packed
                 (Data.ProtoLens.Field.field @"repeatedEnumValue")) ::
              Data.ProtoLens.FieldDescriptor TestMessage
        repeatedMessageValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "repeated_message_value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor MessageType)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"repeatedMessageValue")) ::
              Data.ProtoLens.FieldDescriptor TestMessage
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
    = Lens.Family2.Unchecked.lens
        _TestMessage'_unknownFields
        (\ x__ y__ -> x__ {_TestMessage'_unknownFields = y__})
  defMessage
    = TestMessage'_constructor
        {_TestMessage'boolValue = Data.ProtoLens.fieldDefault,
         _TestMessage'int32Value = Data.ProtoLens.fieldDefault,
         _TestMessage'int64Value = Data.ProtoLens.fieldDefault,
         _TestMessage'uint32Value = Data.ProtoLens.fieldDefault,
         _TestMessage'uint64Value = Data.ProtoLens.fieldDefault,
         _TestMessage'floatValue = Data.ProtoLens.fieldDefault,
         _TestMessage'doubleValue = Data.ProtoLens.fieldDefault,
         _TestMessage'stringValue = Data.ProtoLens.fieldDefault,
         _TestMessage'bytesValue = Data.ProtoLens.fieldDefault,
         _TestMessage'enumValue = Data.ProtoLens.fieldDefault,
         _TestMessage'messageValue = Prelude.Nothing,
         _TestMessage'repeatedBoolValue = Data.Vector.Generic.empty,
         _TestMessage'repeatedInt32Value = Data.Vector.Generic.empty,
         _TestMessage'repeatedInt64Value = Data.Vector.Generic.empty,
         _TestMessage'repeatedUint32Value = Data.Vector.Generic.empty,
         _TestMessage'repeatedUint64Value = Data.Vector.Generic.empty,
         _TestMessage'repeatedFloatValue = Data.Vector.Generic.empty,
         _TestMessage'repeatedDoubleValue = Data.Vector.Generic.empty,
         _TestMessage'repeatedStringValue = Data.Vector.Generic.empty,
         _TestMessage'repeatedBytesValue = Data.Vector.Generic.empty,
         _TestMessage'repeatedEnumValue = Data.Vector.Generic.empty,
         _TestMessage'repeatedMessageValue = Data.Vector.Generic.empty,
         _TestMessage'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TestMessage
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Prelude.Bool
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.ByteString.ByteString
                -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Prelude.Double
                   -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld EnumType
                      -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Prelude.Float
                         -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Int.Int32
                            -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Int.Int64
                               -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld MessageType
                                  -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
                                     -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Word.Word32
                                        -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Word.Word64
                                           -> Data.ProtoLens.Encoding.Bytes.Parser TestMessage
        loop
          x
          mutable'repeatedBoolValue
          mutable'repeatedBytesValue
          mutable'repeatedDoubleValue
          mutable'repeatedEnumValue
          mutable'repeatedFloatValue
          mutable'repeatedInt32Value
          mutable'repeatedInt64Value
          mutable'repeatedMessageValue
          mutable'repeatedStringValue
          mutable'repeatedUint32Value
          mutable'repeatedUint64Value
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'repeatedBoolValue <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                    (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                       mutable'repeatedBoolValue)
                      frozen'repeatedBytesValue <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                     (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                        mutable'repeatedBytesValue)
                      frozen'repeatedDoubleValue <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                      (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                         mutable'repeatedDoubleValue)
                      frozen'repeatedEnumValue <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                    (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                       mutable'repeatedEnumValue)
                      frozen'repeatedFloatValue <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                     (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                        mutable'repeatedFloatValue)
                      frozen'repeatedInt32Value <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                     (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                        mutable'repeatedInt32Value)
                      frozen'repeatedInt64Value <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                     (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                        mutable'repeatedInt64Value)
                      frozen'repeatedMessageValue <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                       (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                          mutable'repeatedMessageValue)
                      frozen'repeatedStringValue <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                      (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                         mutable'repeatedStringValue)
                      frozen'repeatedUint32Value <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                      (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                         mutable'repeatedUint32Value)
                      frozen'repeatedUint64Value <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                      (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                         mutable'repeatedUint64Value)
                      (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'repeatedBoolValue")
                              frozen'repeatedBoolValue
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'repeatedBytesValue")
                                 frozen'repeatedBytesValue
                                 (Lens.Family2.set
                                    (Data.ProtoLens.Field.field @"vec'repeatedDoubleValue")
                                    frozen'repeatedDoubleValue
                                    (Lens.Family2.set
                                       (Data.ProtoLens.Field.field @"vec'repeatedEnumValue")
                                       frozen'repeatedEnumValue
                                       (Lens.Family2.set
                                          (Data.ProtoLens.Field.field @"vec'repeatedFloatValue")
                                          frozen'repeatedFloatValue
                                          (Lens.Family2.set
                                             (Data.ProtoLens.Field.field @"vec'repeatedInt32Value")
                                             frozen'repeatedInt32Value
                                             (Lens.Family2.set
                                                (Data.ProtoLens.Field.field
                                                   @"vec'repeatedInt64Value")
                                                frozen'repeatedInt64Value
                                                (Lens.Family2.set
                                                   (Data.ProtoLens.Field.field
                                                      @"vec'repeatedMessageValue")
                                                   frozen'repeatedMessageValue
                                                   (Lens.Family2.set
                                                      (Data.ProtoLens.Field.field
                                                         @"vec'repeatedStringValue")
                                                      frozen'repeatedStringValue
                                                      (Lens.Family2.set
                                                         (Data.ProtoLens.Field.field
                                                            @"vec'repeatedUint32Value")
                                                         frozen'repeatedUint32Value
                                                         (Lens.Family2.set
                                                            (Data.ProtoLens.Field.field
                                                               @"vec'repeatedUint64Value")
                                                            frozen'repeatedUint64Value x))))))))))))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "bool_value"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"boolValue") y x)
                                  mutable'repeatedBoolValue mutable'repeatedBytesValue
                                  mutable'repeatedDoubleValue mutable'repeatedEnumValue
                                  mutable'repeatedFloatValue mutable'repeatedInt32Value
                                  mutable'repeatedInt64Value mutable'repeatedMessageValue
                                  mutable'repeatedStringValue mutable'repeatedUint32Value
                                  mutable'repeatedUint64Value
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "int32_value"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"int32Value") y x)
                                  mutable'repeatedBoolValue mutable'repeatedBytesValue
                                  mutable'repeatedDoubleValue mutable'repeatedEnumValue
                                  mutable'repeatedFloatValue mutable'repeatedInt32Value
                                  mutable'repeatedInt64Value mutable'repeatedMessageValue
                                  mutable'repeatedStringValue mutable'repeatedUint32Value
                                  mutable'repeatedUint64Value
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "int64_value"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"int64Value") y x)
                                  mutable'repeatedBoolValue mutable'repeatedBytesValue
                                  mutable'repeatedDoubleValue mutable'repeatedEnumValue
                                  mutable'repeatedFloatValue mutable'repeatedInt32Value
                                  mutable'repeatedInt64Value mutable'repeatedMessageValue
                                  mutable'repeatedStringValue mutable'repeatedUint32Value
                                  mutable'repeatedUint64Value
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "uint32_value"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"uint32Value") y x)
                                  mutable'repeatedBoolValue mutable'repeatedBytesValue
                                  mutable'repeatedDoubleValue mutable'repeatedEnumValue
                                  mutable'repeatedFloatValue mutable'repeatedInt32Value
                                  mutable'repeatedInt64Value mutable'repeatedMessageValue
                                  mutable'repeatedStringValue mutable'repeatedUint32Value
                                  mutable'repeatedUint64Value
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "uint64_value"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"uint64Value") y x)
                                  mutable'repeatedBoolValue mutable'repeatedBytesValue
                                  mutable'repeatedDoubleValue mutable'repeatedEnumValue
                                  mutable'repeatedFloatValue mutable'repeatedInt32Value
                                  mutable'repeatedInt64Value mutable'repeatedMessageValue
                                  mutable'repeatedStringValue mutable'repeatedUint32Value
                                  mutable'repeatedUint64Value
                        53
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Data.ProtoLens.Encoding.Bytes.wordToFloat
                                          Data.ProtoLens.Encoding.Bytes.getFixed32)
                                       "float_value"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"floatValue") y x)
                                  mutable'repeatedBoolValue mutable'repeatedBytesValue
                                  mutable'repeatedDoubleValue mutable'repeatedEnumValue
                                  mutable'repeatedFloatValue mutable'repeatedInt32Value
                                  mutable'repeatedInt64Value mutable'repeatedMessageValue
                                  mutable'repeatedStringValue mutable'repeatedUint32Value
                                  mutable'repeatedUint64Value
                        57
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Data.ProtoLens.Encoding.Bytes.wordToDouble
                                          Data.ProtoLens.Encoding.Bytes.getFixed64)
                                       "double_value"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"doubleValue") y x)
                                  mutable'repeatedBoolValue mutable'repeatedBytesValue
                                  mutable'repeatedDoubleValue mutable'repeatedEnumValue
                                  mutable'repeatedFloatValue mutable'repeatedInt32Value
                                  mutable'repeatedInt64Value mutable'repeatedMessageValue
                                  mutable'repeatedStringValue mutable'repeatedUint32Value
                                  mutable'repeatedUint64Value
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "string_value"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"stringValue") y x)
                                  mutable'repeatedBoolValue mutable'repeatedBytesValue
                                  mutable'repeatedDoubleValue mutable'repeatedEnumValue
                                  mutable'repeatedFloatValue mutable'repeatedInt32Value
                                  mutable'repeatedInt64Value mutable'repeatedMessageValue
                                  mutable'repeatedStringValue mutable'repeatedUint32Value
                                  mutable'repeatedUint64Value
                        74
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "bytes_value"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"bytesValue") y x)
                                  mutable'repeatedBoolValue mutable'repeatedBytesValue
                                  mutable'repeatedDoubleValue mutable'repeatedEnumValue
                                  mutable'repeatedFloatValue mutable'repeatedInt32Value
                                  mutable'repeatedInt64Value mutable'repeatedMessageValue
                                  mutable'repeatedStringValue mutable'repeatedUint32Value
                                  mutable'repeatedUint64Value
                        80
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "enum_value"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"enumValue") y x)
                                  mutable'repeatedBoolValue mutable'repeatedBytesValue
                                  mutable'repeatedDoubleValue mutable'repeatedEnumValue
                                  mutable'repeatedFloatValue mutable'repeatedInt32Value
                                  mutable'repeatedInt64Value mutable'repeatedMessageValue
                                  mutable'repeatedStringValue mutable'repeatedUint32Value
                                  mutable'repeatedUint64Value
                        90
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "message_value"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"messageValue") y x)
                                  mutable'repeatedBoolValue mutable'repeatedBytesValue
                                  mutable'repeatedDoubleValue mutable'repeatedEnumValue
                                  mutable'repeatedFloatValue mutable'repeatedInt32Value
                                  mutable'repeatedInt64Value mutable'repeatedMessageValue
                                  mutable'repeatedStringValue mutable'repeatedUint32Value
                                  mutable'repeatedUint64Value
                        168
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (Prelude.fmap
                                           ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                        "repeated_bool_value"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'repeatedBoolValue y)
                                loop
                                  x v mutable'repeatedBytesValue mutable'repeatedDoubleValue
                                  mutable'repeatedEnumValue mutable'repeatedFloatValue
                                  mutable'repeatedInt32Value mutable'repeatedInt64Value
                                  mutable'repeatedMessageValue mutable'repeatedStringValue
                                  mutable'repeatedUint32Value mutable'repeatedUint64Value
                        170
                          -> do y <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                        Data.ProtoLens.Encoding.Bytes.isolate
                                          (Prelude.fromIntegral len)
                                          ((let
                                              ploop qs
                                                = do packedEnd <- Data.ProtoLens.Encoding.Bytes.atEnd
                                                     if packedEnd then
                                                         Prelude.return qs
                                                     else
                                                         do !q <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                    (Prelude.fmap
                                                                       ((Prelude./=) 0)
                                                                       Data.ProtoLens.Encoding.Bytes.getVarInt)
                                                                    "repeated_bool_value"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'repeatedBoolValue)
                                loop
                                  x y mutable'repeatedBytesValue mutable'repeatedDoubleValue
                                  mutable'repeatedEnumValue mutable'repeatedFloatValue
                                  mutable'repeatedInt32Value mutable'repeatedInt64Value
                                  mutable'repeatedMessageValue mutable'repeatedStringValue
                                  mutable'repeatedUint32Value mutable'repeatedUint64Value
                        176
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (Prelude.fmap
                                           Prelude.fromIntegral
                                           Data.ProtoLens.Encoding.Bytes.getVarInt)
                                        "repeated_int32_value"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'repeatedInt32Value y)
                                loop
                                  x mutable'repeatedBoolValue mutable'repeatedBytesValue
                                  mutable'repeatedDoubleValue mutable'repeatedEnumValue
                                  mutable'repeatedFloatValue v mutable'repeatedInt64Value
                                  mutable'repeatedMessageValue mutable'repeatedStringValue
                                  mutable'repeatedUint32Value mutable'repeatedUint64Value
                        178
                          -> do y <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                        Data.ProtoLens.Encoding.Bytes.isolate
                                          (Prelude.fromIntegral len)
                                          ((let
                                              ploop qs
                                                = do packedEnd <- Data.ProtoLens.Encoding.Bytes.atEnd
                                                     if packedEnd then
                                                         Prelude.return qs
                                                     else
                                                         do !q <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                    (Prelude.fmap
                                                                       Prelude.fromIntegral
                                                                       Data.ProtoLens.Encoding.Bytes.getVarInt)
                                                                    "repeated_int32_value"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'repeatedInt32Value)
                                loop
                                  x mutable'repeatedBoolValue mutable'repeatedBytesValue
                                  mutable'repeatedDoubleValue mutable'repeatedEnumValue
                                  mutable'repeatedFloatValue y mutable'repeatedInt64Value
                                  mutable'repeatedMessageValue mutable'repeatedStringValue
                                  mutable'repeatedUint32Value mutable'repeatedUint64Value
                        184
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (Prelude.fmap
                                           Prelude.fromIntegral
                                           Data.ProtoLens.Encoding.Bytes.getVarInt)
                                        "repeated_int64_value"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'repeatedInt64Value y)
                                loop
                                  x mutable'repeatedBoolValue mutable'repeatedBytesValue
                                  mutable'repeatedDoubleValue mutable'repeatedEnumValue
                                  mutable'repeatedFloatValue mutable'repeatedInt32Value v
                                  mutable'repeatedMessageValue mutable'repeatedStringValue
                                  mutable'repeatedUint32Value mutable'repeatedUint64Value
                        186
                          -> do y <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                        Data.ProtoLens.Encoding.Bytes.isolate
                                          (Prelude.fromIntegral len)
                                          ((let
                                              ploop qs
                                                = do packedEnd <- Data.ProtoLens.Encoding.Bytes.atEnd
                                                     if packedEnd then
                                                         Prelude.return qs
                                                     else
                                                         do !q <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                    (Prelude.fmap
                                                                       Prelude.fromIntegral
                                                                       Data.ProtoLens.Encoding.Bytes.getVarInt)
                                                                    "repeated_int64_value"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'repeatedInt64Value)
                                loop
                                  x mutable'repeatedBoolValue mutable'repeatedBytesValue
                                  mutable'repeatedDoubleValue mutable'repeatedEnumValue
                                  mutable'repeatedFloatValue mutable'repeatedInt32Value y
                                  mutable'repeatedMessageValue mutable'repeatedStringValue
                                  mutable'repeatedUint32Value mutable'repeatedUint64Value
                        192
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (Prelude.fmap
                                           Prelude.fromIntegral
                                           Data.ProtoLens.Encoding.Bytes.getVarInt)
                                        "repeated_uint32_value"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'repeatedUint32Value y)
                                loop
                                  x mutable'repeatedBoolValue mutable'repeatedBytesValue
                                  mutable'repeatedDoubleValue mutable'repeatedEnumValue
                                  mutable'repeatedFloatValue mutable'repeatedInt32Value
                                  mutable'repeatedInt64Value mutable'repeatedMessageValue
                                  mutable'repeatedStringValue v mutable'repeatedUint64Value
                        194
                          -> do y <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                        Data.ProtoLens.Encoding.Bytes.isolate
                                          (Prelude.fromIntegral len)
                                          ((let
                                              ploop qs
                                                = do packedEnd <- Data.ProtoLens.Encoding.Bytes.atEnd
                                                     if packedEnd then
                                                         Prelude.return qs
                                                     else
                                                         do !q <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                    (Prelude.fmap
                                                                       Prelude.fromIntegral
                                                                       Data.ProtoLens.Encoding.Bytes.getVarInt)
                                                                    "repeated_uint32_value"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'repeatedUint32Value)
                                loop
                                  x mutable'repeatedBoolValue mutable'repeatedBytesValue
                                  mutable'repeatedDoubleValue mutable'repeatedEnumValue
                                  mutable'repeatedFloatValue mutable'repeatedInt32Value
                                  mutable'repeatedInt64Value mutable'repeatedMessageValue
                                  mutable'repeatedStringValue y mutable'repeatedUint64Value
                        200
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        Data.ProtoLens.Encoding.Bytes.getVarInt
                                        "repeated_uint64_value"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'repeatedUint64Value y)
                                loop
                                  x mutable'repeatedBoolValue mutable'repeatedBytesValue
                                  mutable'repeatedDoubleValue mutable'repeatedEnumValue
                                  mutable'repeatedFloatValue mutable'repeatedInt32Value
                                  mutable'repeatedInt64Value mutable'repeatedMessageValue
                                  mutable'repeatedStringValue mutable'repeatedUint32Value v
                        202
                          -> do y <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                        Data.ProtoLens.Encoding.Bytes.isolate
                                          (Prelude.fromIntegral len)
                                          ((let
                                              ploop qs
                                                = do packedEnd <- Data.ProtoLens.Encoding.Bytes.atEnd
                                                     if packedEnd then
                                                         Prelude.return qs
                                                     else
                                                         do !q <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                    Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                    "repeated_uint64_value"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'repeatedUint64Value)
                                loop
                                  x mutable'repeatedBoolValue mutable'repeatedBytesValue
                                  mutable'repeatedDoubleValue mutable'repeatedEnumValue
                                  mutable'repeatedFloatValue mutable'repeatedInt32Value
                                  mutable'repeatedInt64Value mutable'repeatedMessageValue
                                  mutable'repeatedStringValue mutable'repeatedUint32Value y
                        213
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (Prelude.fmap
                                           Data.ProtoLens.Encoding.Bytes.wordToFloat
                                           Data.ProtoLens.Encoding.Bytes.getFixed32)
                                        "repeated_float_value"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'repeatedFloatValue y)
                                loop
                                  x mutable'repeatedBoolValue mutable'repeatedBytesValue
                                  mutable'repeatedDoubleValue mutable'repeatedEnumValue v
                                  mutable'repeatedInt32Value mutable'repeatedInt64Value
                                  mutable'repeatedMessageValue mutable'repeatedStringValue
                                  mutable'repeatedUint32Value mutable'repeatedUint64Value
                        210
                          -> do y <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                        Data.ProtoLens.Encoding.Bytes.isolate
                                          (Prelude.fromIntegral len)
                                          ((let
                                              ploop qs
                                                = do packedEnd <- Data.ProtoLens.Encoding.Bytes.atEnd
                                                     if packedEnd then
                                                         Prelude.return qs
                                                     else
                                                         do !q <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                    (Prelude.fmap
                                                                       Data.ProtoLens.Encoding.Bytes.wordToFloat
                                                                       Data.ProtoLens.Encoding.Bytes.getFixed32)
                                                                    "repeated_float_value"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'repeatedFloatValue)
                                loop
                                  x mutable'repeatedBoolValue mutable'repeatedBytesValue
                                  mutable'repeatedDoubleValue mutable'repeatedEnumValue y
                                  mutable'repeatedInt32Value mutable'repeatedInt64Value
                                  mutable'repeatedMessageValue mutable'repeatedStringValue
                                  mutable'repeatedUint32Value mutable'repeatedUint64Value
                        217
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (Prelude.fmap
                                           Data.ProtoLens.Encoding.Bytes.wordToDouble
                                           Data.ProtoLens.Encoding.Bytes.getFixed64)
                                        "repeated_double_value"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'repeatedDoubleValue y)
                                loop
                                  x mutable'repeatedBoolValue mutable'repeatedBytesValue v
                                  mutable'repeatedEnumValue mutable'repeatedFloatValue
                                  mutable'repeatedInt32Value mutable'repeatedInt64Value
                                  mutable'repeatedMessageValue mutable'repeatedStringValue
                                  mutable'repeatedUint32Value mutable'repeatedUint64Value
                        218
                          -> do y <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                        Data.ProtoLens.Encoding.Bytes.isolate
                                          (Prelude.fromIntegral len)
                                          ((let
                                              ploop qs
                                                = do packedEnd <- Data.ProtoLens.Encoding.Bytes.atEnd
                                                     if packedEnd then
                                                         Prelude.return qs
                                                     else
                                                         do !q <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                    (Prelude.fmap
                                                                       Data.ProtoLens.Encoding.Bytes.wordToDouble
                                                                       Data.ProtoLens.Encoding.Bytes.getFixed64)
                                                                    "repeated_double_value"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'repeatedDoubleValue)
                                loop
                                  x mutable'repeatedBoolValue mutable'repeatedBytesValue y
                                  mutable'repeatedEnumValue mutable'repeatedFloatValue
                                  mutable'repeatedInt32Value mutable'repeatedInt64Value
                                  mutable'repeatedMessageValue mutable'repeatedStringValue
                                  mutable'repeatedUint32Value mutable'repeatedUint64Value
                        226
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "repeated_string_value"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'repeatedStringValue y)
                                loop
                                  x mutable'repeatedBoolValue mutable'repeatedBytesValue
                                  mutable'repeatedDoubleValue mutable'repeatedEnumValue
                                  mutable'repeatedFloatValue mutable'repeatedInt32Value
                                  mutable'repeatedInt64Value mutable'repeatedMessageValue v
                                  mutable'repeatedUint32Value mutable'repeatedUint64Value
                        234
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.getBytes
                                              (Prelude.fromIntegral len))
                                        "repeated_bytes_value"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'repeatedBytesValue y)
                                loop
                                  x mutable'repeatedBoolValue v mutable'repeatedDoubleValue
                                  mutable'repeatedEnumValue mutable'repeatedFloatValue
                                  mutable'repeatedInt32Value mutable'repeatedInt64Value
                                  mutable'repeatedMessageValue mutable'repeatedStringValue
                                  mutable'repeatedUint32Value mutable'repeatedUint64Value
                        240
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (Prelude.fmap
                                           Prelude.toEnum
                                           (Prelude.fmap
                                              Prelude.fromIntegral
                                              Data.ProtoLens.Encoding.Bytes.getVarInt))
                                        "repeated_enum_value"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'repeatedEnumValue y)
                                loop
                                  x mutable'repeatedBoolValue mutable'repeatedBytesValue
                                  mutable'repeatedDoubleValue v mutable'repeatedFloatValue
                                  mutable'repeatedInt32Value mutable'repeatedInt64Value
                                  mutable'repeatedMessageValue mutable'repeatedStringValue
                                  mutable'repeatedUint32Value mutable'repeatedUint64Value
                        242
                          -> do y <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                        Data.ProtoLens.Encoding.Bytes.isolate
                                          (Prelude.fromIntegral len)
                                          ((let
                                              ploop qs
                                                = do packedEnd <- Data.ProtoLens.Encoding.Bytes.atEnd
                                                     if packedEnd then
                                                         Prelude.return qs
                                                     else
                                                         do !q <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                    (Prelude.fmap
                                                                       Prelude.toEnum
                                                                       (Prelude.fmap
                                                                          Prelude.fromIntegral
                                                                          Data.ProtoLens.Encoding.Bytes.getVarInt))
                                                                    "repeated_enum_value"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'repeatedEnumValue)
                                loop
                                  x mutable'repeatedBoolValue mutable'repeatedBytesValue
                                  mutable'repeatedDoubleValue y mutable'repeatedFloatValue
                                  mutable'repeatedInt32Value mutable'repeatedInt64Value
                                  mutable'repeatedMessageValue mutable'repeatedStringValue
                                  mutable'repeatedUint32Value mutable'repeatedUint64Value
                        250
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "repeated_message_value"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'repeatedMessageValue y)
                                loop
                                  x mutable'repeatedBoolValue mutable'repeatedBytesValue
                                  mutable'repeatedDoubleValue mutable'repeatedEnumValue
                                  mutable'repeatedFloatValue mutable'repeatedInt32Value
                                  mutable'repeatedInt64Value v mutable'repeatedStringValue
                                  mutable'repeatedUint32Value mutable'repeatedUint64Value
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'repeatedBoolValue mutable'repeatedBytesValue
                                  mutable'repeatedDoubleValue mutable'repeatedEnumValue
                                  mutable'repeatedFloatValue mutable'repeatedInt32Value
                                  mutable'repeatedInt64Value mutable'repeatedMessageValue
                                  mutable'repeatedStringValue mutable'repeatedUint32Value
                                  mutable'repeatedUint64Value
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'repeatedBoolValue <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             Data.ProtoLens.Encoding.Growing.new
              mutable'repeatedBytesValue <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              Data.ProtoLens.Encoding.Growing.new
              mutable'repeatedDoubleValue <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                               Data.ProtoLens.Encoding.Growing.new
              mutable'repeatedEnumValue <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             Data.ProtoLens.Encoding.Growing.new
              mutable'repeatedFloatValue <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              Data.ProtoLens.Encoding.Growing.new
              mutable'repeatedInt32Value <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              Data.ProtoLens.Encoding.Growing.new
              mutable'repeatedInt64Value <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              Data.ProtoLens.Encoding.Growing.new
              mutable'repeatedMessageValue <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                Data.ProtoLens.Encoding.Growing.new
              mutable'repeatedStringValue <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                               Data.ProtoLens.Encoding.Growing.new
              mutable'repeatedUint32Value <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                               Data.ProtoLens.Encoding.Growing.new
              mutable'repeatedUint64Value <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                               Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage mutable'repeatedBoolValue
                mutable'repeatedBytesValue mutable'repeatedDoubleValue
                mutable'repeatedEnumValue mutable'repeatedFloatValue
                mutable'repeatedInt32Value mutable'repeatedInt64Value
                mutable'repeatedMessageValue mutable'repeatedStringValue
                mutable'repeatedUint32Value mutable'repeatedUint64Value)
          "TestMessage"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"boolValue") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt (\ b -> if b then 1 else 0)
                         _v))
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"int32Value") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (let
                      _v
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"int64Value") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (let
                         _v
                           = Lens.Family2.view (Data.ProtoLens.Field.field @"uint32Value") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               ((Prelude..)
                                  Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (let
                            _v
                              = Lens.Family2.view (Data.ProtoLens.Field.field @"uint64Value") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                         ((Data.Monoid.<>)
                            (let
                               _v
                                 = Lens.Family2.view (Data.ProtoLens.Field.field @"floatValue") _x
                             in
                               if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                   Data.Monoid.mempty
                               else
                                   (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 53)
                                     ((Prelude..)
                                        Data.ProtoLens.Encoding.Bytes.putFixed32
                                        Data.ProtoLens.Encoding.Bytes.floatToWord _v))
                            ((Data.Monoid.<>)
                               (let
                                  _v
                                    = Lens.Family2.view
                                        (Data.ProtoLens.Field.field @"doubleValue") _x
                                in
                                  if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                      Data.Monoid.mempty
                                  else
                                      (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 57)
                                        ((Prelude..)
                                           Data.ProtoLens.Encoding.Bytes.putFixed64
                                           Data.ProtoLens.Encoding.Bytes.doubleToWord _v))
                               ((Data.Monoid.<>)
                                  (let
                                     _v
                                       = Lens.Family2.view
                                           (Data.ProtoLens.Field.field @"stringValue") _x
                                   in
                                     if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                         Data.Monoid.mempty
                                     else
                                         (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
                                           ((Prelude..)
                                              (\ bs
                                                 -> (Data.Monoid.<>)
                                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                         (Prelude.fromIntegral
                                                            (Data.ByteString.length bs)))
                                                      (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                              Data.Text.Encoding.encodeUtf8 _v))
                                  ((Data.Monoid.<>)
                                     (let
                                        _v
                                          = Lens.Family2.view
                                              (Data.ProtoLens.Field.field @"bytesValue") _x
                                      in
                                        if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                            Data.Monoid.mempty
                                        else
                                            (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt 74)
                                              ((\ bs
                                                  -> (Data.Monoid.<>)
                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                          (Prelude.fromIntegral
                                                             (Data.ByteString.length bs)))
                                                       (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                                 _v))
                                     ((Data.Monoid.<>)
                                        (let
                                           _v
                                             = Lens.Family2.view
                                                 (Data.ProtoLens.Field.field @"enumValue") _x
                                         in
                                           if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                               Data.Monoid.mempty
                                           else
                                               (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt 80)
                                                 ((Prelude..)
                                                    ((Prelude..)
                                                       Data.ProtoLens.Encoding.Bytes.putVarInt
                                                       Prelude.fromIntegral)
                                                    Prelude.fromEnum _v))
                                        ((Data.Monoid.<>)
                                           (case
                                                Lens.Family2.view
                                                  (Data.ProtoLens.Field.field @"maybe'messageValue")
                                                  _x
                                            of
                                              Prelude.Nothing -> Data.Monoid.mempty
                                              (Prelude.Just _v)
                                                -> (Data.Monoid.<>)
                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 90)
                                                     ((Prelude..)
                                                        (\ bs
                                                           -> (Data.Monoid.<>)
                                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                   (Prelude.fromIntegral
                                                                      (Data.ByteString.length bs)))
                                                                (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                   bs))
                                                        Data.ProtoLens.encodeMessage _v))
                                           ((Data.Monoid.<>)
                                              (let
                                                 p = Lens.Family2.view
                                                       (Data.ProtoLens.Field.field
                                                          @"vec'repeatedBoolValue")
                                                       _x
                                               in
                                                 if Data.Vector.Generic.null p then
                                                     Data.Monoid.mempty
                                                 else
                                                     (Data.Monoid.<>)
                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt 170)
                                                       ((\ bs
                                                           -> (Data.Monoid.<>)
                                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                   (Prelude.fromIntegral
                                                                      (Data.ByteString.length bs)))
                                                                (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                   bs))
                                                          (Data.ProtoLens.Encoding.Bytes.runBuilder
                                                             (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                                                ((Prelude..)
                                                                   Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                   (\ b -> if b then 1 else 0))
                                                                p))))
                                              ((Data.Monoid.<>)
                                                 (let
                                                    p = Lens.Family2.view
                                                          (Data.ProtoLens.Field.field
                                                             @"vec'repeatedInt32Value")
                                                          _x
                                                  in
                                                    if Data.Vector.Generic.null p then
                                                        Data.Monoid.mempty
                                                    else
                                                        (Data.Monoid.<>)
                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                             178)
                                                          ((\ bs
                                                              -> (Data.Monoid.<>)
                                                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                      (Prelude.fromIntegral
                                                                         (Data.ByteString.length
                                                                            bs)))
                                                                   (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                      bs))
                                                             (Data.ProtoLens.Encoding.Bytes.runBuilder
                                                                (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                                                   ((Prelude..)
                                                                      Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                      Prelude.fromIntegral)
                                                                   p))))
                                                 ((Data.Monoid.<>)
                                                    (let
                                                       p = Lens.Family2.view
                                                             (Data.ProtoLens.Field.field
                                                                @"vec'repeatedInt64Value")
                                                             _x
                                                     in
                                                       if Data.Vector.Generic.null p then
                                                           Data.Monoid.mempty
                                                       else
                                                           (Data.Monoid.<>)
                                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                186)
                                                             ((\ bs
                                                                 -> (Data.Monoid.<>)
                                                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                         (Prelude.fromIntegral
                                                                            (Data.ByteString.length
                                                                               bs)))
                                                                      (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                         bs))
                                                                (Data.ProtoLens.Encoding.Bytes.runBuilder
                                                                   (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                                                      ((Prelude..)
                                                                         Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                         Prelude.fromIntegral)
                                                                      p))))
                                                    ((Data.Monoid.<>)
                                                       (let
                                                          p = Lens.Family2.view
                                                                (Data.ProtoLens.Field.field
                                                                   @"vec'repeatedUint32Value")
                                                                _x
                                                        in
                                                          if Data.Vector.Generic.null p then
                                                              Data.Monoid.mempty
                                                          else
                                                              (Data.Monoid.<>)
                                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                   194)
                                                                ((\ bs
                                                                    -> (Data.Monoid.<>)
                                                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                            (Prelude.fromIntegral
                                                                               (Data.ByteString.length
                                                                                  bs)))
                                                                         (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                            bs))
                                                                   (Data.ProtoLens.Encoding.Bytes.runBuilder
                                                                      (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                                                         ((Prelude..)
                                                                            Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                            Prelude.fromIntegral)
                                                                         p))))
                                                       ((Data.Monoid.<>)
                                                          (let
                                                             p = Lens.Family2.view
                                                                   (Data.ProtoLens.Field.field
                                                                      @"vec'repeatedUint64Value")
                                                                   _x
                                                           in
                                                             if Data.Vector.Generic.null p then
                                                                 Data.Monoid.mempty
                                                             else
                                                                 (Data.Monoid.<>)
                                                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                      202)
                                                                   ((\ bs
                                                                       -> (Data.Monoid.<>)
                                                                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                               (Prelude.fromIntegral
                                                                                  (Data.ByteString.length
                                                                                     bs)))
                                                                            (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                               bs))
                                                                      (Data.ProtoLens.Encoding.Bytes.runBuilder
                                                                         (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                                                            Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                            p))))
                                                          ((Data.Monoid.<>)
                                                             (let
                                                                p = Lens.Family2.view
                                                                      (Data.ProtoLens.Field.field
                                                                         @"vec'repeatedFloatValue")
                                                                      _x
                                                              in
                                                                if Data.Vector.Generic.null p then
                                                                    Data.Monoid.mempty
                                                                else
                                                                    (Data.Monoid.<>)
                                                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                         210)
                                                                      ((\ bs
                                                                          -> (Data.Monoid.<>)
                                                                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                  (Prelude.fromIntegral
                                                                                     (Data.ByteString.length
                                                                                        bs)))
                                                                               (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                  bs))
                                                                         (Data.ProtoLens.Encoding.Bytes.runBuilder
                                                                            (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                                                               ((Prelude..)
                                                                                  Data.ProtoLens.Encoding.Bytes.putFixed32
                                                                                  Data.ProtoLens.Encoding.Bytes.floatToWord)
                                                                               p))))
                                                             ((Data.Monoid.<>)
                                                                (let
                                                                   p = Lens.Family2.view
                                                                         (Data.ProtoLens.Field.field
                                                                            @"vec'repeatedDoubleValue")
                                                                         _x
                                                                 in
                                                                   if Data.Vector.Generic.null
                                                                        p then
                                                                       Data.Monoid.mempty
                                                                   else
                                                                       (Data.Monoid.<>)
                                                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                            218)
                                                                         ((\ bs
                                                                             -> (Data.Monoid.<>)
                                                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                     (Prelude.fromIntegral
                                                                                        (Data.ByteString.length
                                                                                           bs)))
                                                                                  (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                     bs))
                                                                            (Data.ProtoLens.Encoding.Bytes.runBuilder
                                                                               (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                                                                  ((Prelude..)
                                                                                     Data.ProtoLens.Encoding.Bytes.putFixed64
                                                                                     Data.ProtoLens.Encoding.Bytes.doubleToWord)
                                                                                  p))))
                                                                ((Data.Monoid.<>)
                                                                   (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                                                      (\ _v
                                                                         -> (Data.Monoid.<>)
                                                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                 226)
                                                                              ((Prelude..)
                                                                                 (\ bs
                                                                                    -> (Data.Monoid.<>)
                                                                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                            (Prelude.fromIntegral
                                                                                               (Data.ByteString.length
                                                                                                  bs)))
                                                                                         (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                            bs))
                                                                                 Data.Text.Encoding.encodeUtf8
                                                                                 _v))
                                                                      (Lens.Family2.view
                                                                         (Data.ProtoLens.Field.field
                                                                            @"vec'repeatedStringValue")
                                                                         _x))
                                                                   ((Data.Monoid.<>)
                                                                      (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                                                         (\ _v
                                                                            -> (Data.Monoid.<>)
                                                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                    234)
                                                                                 ((\ bs
                                                                                     -> (Data.Monoid.<>)
                                                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                             (Prelude.fromIntegral
                                                                                                (Data.ByteString.length
                                                                                                   bs)))
                                                                                          (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                             bs))
                                                                                    _v))
                                                                         (Lens.Family2.view
                                                                            (Data.ProtoLens.Field.field
                                                                               @"vec'repeatedBytesValue")
                                                                            _x))
                                                                      ((Data.Monoid.<>)
                                                                         (let
                                                                            p = Lens.Family2.view
                                                                                  (Data.ProtoLens.Field.field
                                                                                     @"vec'repeatedEnumValue")
                                                                                  _x
                                                                          in
                                                                            if Data.Vector.Generic.null
                                                                                 p then
                                                                                Data.Monoid.mempty
                                                                            else
                                                                                (Data.Monoid.<>)
                                                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                     242)
                                                                                  ((\ bs
                                                                                      -> (Data.Monoid.<>)
                                                                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                              (Prelude.fromIntegral
                                                                                                 (Data.ByteString.length
                                                                                                    bs)))
                                                                                           (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                              bs))
                                                                                     (Data.ProtoLens.Encoding.Bytes.runBuilder
                                                                                        (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                                                                           ((Prelude..)
                                                                                              ((Prelude..)
                                                                                                 Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                 Prelude.fromIntegral)
                                                                                              Prelude.fromEnum)
                                                                                           p))))
                                                                         ((Data.Monoid.<>)
                                                                            (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                                                               (\ _v
                                                                                  -> (Data.Monoid.<>)
                                                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                          250)
                                                                                       ((Prelude..)
                                                                                          (\ bs
                                                                                             -> (Data.Monoid.<>)
                                                                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                     (Prelude.fromIntegral
                                                                                                        (Data.ByteString.length
                                                                                                           bs)))
                                                                                                  (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                     bs))
                                                                                          Data.ProtoLens.encodeMessage
                                                                                          _v))
                                                                               (Lens.Family2.view
                                                                                  (Data.ProtoLens.Field.field
                                                                                     @"vec'repeatedMessageValue")
                                                                                  _x))
                                                                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                                                               (Lens.Family2.view
                                                                                  Data.ProtoLens.unknownFields
                                                                                  _x)))))))))))))))))))))))
instance Control.DeepSeq.NFData TestMessage where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TestMessage'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TestMessage'boolValue x__)
                (Control.DeepSeq.deepseq
                   (_TestMessage'int32Value x__)
                   (Control.DeepSeq.deepseq
                      (_TestMessage'int64Value x__)
                      (Control.DeepSeq.deepseq
                         (_TestMessage'uint32Value x__)
                         (Control.DeepSeq.deepseq
                            (_TestMessage'uint64Value x__)
                            (Control.DeepSeq.deepseq
                               (_TestMessage'floatValue x__)
                               (Control.DeepSeq.deepseq
                                  (_TestMessage'doubleValue x__)
                                  (Control.DeepSeq.deepseq
                                     (_TestMessage'stringValue x__)
                                     (Control.DeepSeq.deepseq
                                        (_TestMessage'bytesValue x__)
                                        (Control.DeepSeq.deepseq
                                           (_TestMessage'enumValue x__)
                                           (Control.DeepSeq.deepseq
                                              (_TestMessage'messageValue x__)
                                              (Control.DeepSeq.deepseq
                                                 (_TestMessage'repeatedBoolValue x__)
                                                 (Control.DeepSeq.deepseq
                                                    (_TestMessage'repeatedInt32Value x__)
                                                    (Control.DeepSeq.deepseq
                                                       (_TestMessage'repeatedInt64Value x__)
                                                       (Control.DeepSeq.deepseq
                                                          (_TestMessage'repeatedUint32Value x__)
                                                          (Control.DeepSeq.deepseq
                                                             (_TestMessage'repeatedUint64Value x__)
                                                             (Control.DeepSeq.deepseq
                                                                (_TestMessage'repeatedFloatValue
                                                                   x__)
                                                                (Control.DeepSeq.deepseq
                                                                   (_TestMessage'repeatedDoubleValue
                                                                      x__)
                                                                   (Control.DeepSeq.deepseq
                                                                      (_TestMessage'repeatedStringValue
                                                                         x__)
                                                                      (Control.DeepSeq.deepseq
                                                                         (_TestMessage'repeatedBytesValue
                                                                            x__)
                                                                         (Control.DeepSeq.deepseq
                                                                            (_TestMessage'repeatedEnumValue
                                                                               x__)
                                                                            (Control.DeepSeq.deepseq
                                                                               (_TestMessage'repeatedMessageValue
                                                                                  x__)
                                                                               ()))))))))))))))))))))))
{- | Fields :
     
         * 'Proto.JsonFormatProto3_Fields.boolMap' @:: Lens' TestNestedMap (Data.Map.Map Prelude.Bool Data.Int.Int32)@
         * 'Proto.JsonFormatProto3_Fields.int32Map' @:: Lens' TestNestedMap (Data.Map.Map Data.Int.Int32 Data.Int.Int32)@
         * 'Proto.JsonFormatProto3_Fields.int64Map' @:: Lens' TestNestedMap (Data.Map.Map Data.Int.Int64 Data.Int.Int32)@
         * 'Proto.JsonFormatProto3_Fields.uint32Map' @:: Lens' TestNestedMap (Data.Map.Map Data.Word.Word32 Data.Int.Int32)@
         * 'Proto.JsonFormatProto3_Fields.uint64Map' @:: Lens' TestNestedMap (Data.Map.Map Data.Word.Word64 Data.Int.Int32)@
         * 'Proto.JsonFormatProto3_Fields.stringMap' @:: Lens' TestNestedMap (Data.Map.Map Data.Text.Text Data.Int.Int32)@
         * 'Proto.JsonFormatProto3_Fields.mapMap' @:: Lens' TestNestedMap (Data.Map.Map Data.Text.Text TestNestedMap)@ -}
data TestNestedMap
  = TestNestedMap'_constructor {_TestNestedMap'boolMap :: !(Data.Map.Map Prelude.Bool Data.Int.Int32),
                                _TestNestedMap'int32Map :: !(Data.Map.Map Data.Int.Int32 Data.Int.Int32),
                                _TestNestedMap'int64Map :: !(Data.Map.Map Data.Int.Int64 Data.Int.Int32),
                                _TestNestedMap'uint32Map :: !(Data.Map.Map Data.Word.Word32 Data.Int.Int32),
                                _TestNestedMap'uint64Map :: !(Data.Map.Map Data.Word.Word64 Data.Int.Int32),
                                _TestNestedMap'stringMap :: !(Data.Map.Map Data.Text.Text Data.Int.Int32),
                                _TestNestedMap'mapMap :: !(Data.Map.Map Data.Text.Text TestNestedMap),
                                _TestNestedMap'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TestNestedMap where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TestNestedMap "boolMap" (Data.Map.Map Prelude.Bool Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestNestedMap'boolMap
           (\ x__ y__ -> x__ {_TestNestedMap'boolMap = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TestNestedMap "int32Map" (Data.Map.Map Data.Int.Int32 Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestNestedMap'int32Map
           (\ x__ y__ -> x__ {_TestNestedMap'int32Map = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TestNestedMap "int64Map" (Data.Map.Map Data.Int.Int64 Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestNestedMap'int64Map
           (\ x__ y__ -> x__ {_TestNestedMap'int64Map = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TestNestedMap "uint32Map" (Data.Map.Map Data.Word.Word32 Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestNestedMap'uint32Map
           (\ x__ y__ -> x__ {_TestNestedMap'uint32Map = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TestNestedMap "uint64Map" (Data.Map.Map Data.Word.Word64 Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestNestedMap'uint64Map
           (\ x__ y__ -> x__ {_TestNestedMap'uint64Map = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TestNestedMap "stringMap" (Data.Map.Map Data.Text.Text Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestNestedMap'stringMap
           (\ x__ y__ -> x__ {_TestNestedMap'stringMap = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TestNestedMap "mapMap" (Data.Map.Map Data.Text.Text TestNestedMap) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestNestedMap'mapMap
           (\ x__ y__ -> x__ {_TestNestedMap'mapMap = y__}))
        Prelude.id
instance Data.ProtoLens.Message TestNestedMap where
  messageName _ = Data.Text.pack "proto3.TestNestedMap"
  packedMessageDescriptor _
    = "\n\
      \\rTestNestedMap\DC2=\n\
      \\bbool_map\CAN\SOH \ETX(\v2\".proto3.TestNestedMap.BoolMapEntryR\aboolMap\DC2@\n\
      \\tint32_map\CAN\STX \ETX(\v2#.proto3.TestNestedMap.Int32MapEntryR\bint32Map\DC2@\n\
      \\tint64_map\CAN\ETX \ETX(\v2#.proto3.TestNestedMap.Int64MapEntryR\bint64Map\DC2C\n\
      \\n\
      \uint32_map\CAN\EOT \ETX(\v2$.proto3.TestNestedMap.Uint32MapEntryR\tuint32Map\DC2C\n\
      \\n\
      \uint64_map\CAN\ENQ \ETX(\v2$.proto3.TestNestedMap.Uint64MapEntryR\tuint64Map\DC2C\n\
      \\n\
      \string_map\CAN\ACK \ETX(\v2$.proto3.TestNestedMap.StringMapEntryR\tstringMap\DC2:\n\
      \\amap_map\CAN\a \ETX(\v2!.proto3.TestNestedMap.MapMapEntryR\ACKmapMap\SUB:\n\
      \\fBoolMapEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\bR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\ENQR\ENQvalue:\STX8\SOH\SUB;\n\
      \\rInt32MapEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\ENQR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\ENQR\ENQvalue:\STX8\SOH\SUB;\n\
      \\rInt64MapEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\ETXR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\ENQR\ENQvalue:\STX8\SOH\SUB<\n\
      \\SOUint32MapEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\rR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\ENQR\ENQvalue:\STX8\SOH\SUB<\n\
      \\SOUint64MapEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\EOTR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\ENQR\ENQvalue:\STX8\SOH\SUB<\n\
      \\SOStringMapEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\ENQR\ENQvalue:\STX8\SOH\SUBP\n\
      \\vMapMapEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2+\n\
      \\ENQvalue\CAN\STX \SOH(\v2\NAK.proto3.TestNestedMapR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        boolMap__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bool_map"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TestNestedMap'BoolMapEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"boolMap")) ::
              Data.ProtoLens.FieldDescriptor TestNestedMap
        int32Map__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "int32_map"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TestNestedMap'Int32MapEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"int32Map")) ::
              Data.ProtoLens.FieldDescriptor TestNestedMap
        int64Map__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "int64_map"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TestNestedMap'Int64MapEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"int64Map")) ::
              Data.ProtoLens.FieldDescriptor TestNestedMap
        uint32Map__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "uint32_map"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TestNestedMap'Uint32MapEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"uint32Map")) ::
              Data.ProtoLens.FieldDescriptor TestNestedMap
        uint64Map__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "uint64_map"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TestNestedMap'Uint64MapEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"uint64Map")) ::
              Data.ProtoLens.FieldDescriptor TestNestedMap
        stringMap__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "string_map"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TestNestedMap'StringMapEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"stringMap")) ::
              Data.ProtoLens.FieldDescriptor TestNestedMap
        mapMap__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "map_map"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TestNestedMap'MapMapEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"mapMap")) ::
              Data.ProtoLens.FieldDescriptor TestNestedMap
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
    = Lens.Family2.Unchecked.lens
        _TestNestedMap'_unknownFields
        (\ x__ y__ -> x__ {_TestNestedMap'_unknownFields = y__})
  defMessage
    = TestNestedMap'_constructor
        {_TestNestedMap'boolMap = Data.Map.empty,
         _TestNestedMap'int32Map = Data.Map.empty,
         _TestNestedMap'int64Map = Data.Map.empty,
         _TestNestedMap'uint32Map = Data.Map.empty,
         _TestNestedMap'uint64Map = Data.Map.empty,
         _TestNestedMap'stringMap = Data.Map.empty,
         _TestNestedMap'mapMap = Data.Map.empty,
         _TestNestedMap'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TestNestedMap -> Data.ProtoLens.Encoding.Bytes.Parser TestNestedMap
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !(entry :: TestNestedMap'BoolMapEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                            (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                                Data.ProtoLens.Encoding.Bytes.isolate
                                                                                  (Prelude.fromIntegral
                                                                                     len)
                                                                                  Data.ProtoLens.parseMessage)
                                                                            "bool_map"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"boolMap")
                                        (\ !t -> Data.Map.insert key value t) x))
                        18
                          -> do !(entry :: TestNestedMap'Int32MapEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                             (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                                 Data.ProtoLens.Encoding.Bytes.isolate
                                                                                   (Prelude.fromIntegral
                                                                                      len)
                                                                                   Data.ProtoLens.parseMessage)
                                                                             "int32_map"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"int32Map")
                                        (\ !t -> Data.Map.insert key value t) x))
                        26
                          -> do !(entry :: TestNestedMap'Int64MapEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                             (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                                 Data.ProtoLens.Encoding.Bytes.isolate
                                                                                   (Prelude.fromIntegral
                                                                                      len)
                                                                                   Data.ProtoLens.parseMessage)
                                                                             "int64_map"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"int64Map")
                                        (\ !t -> Data.Map.insert key value t) x))
                        34
                          -> do !(entry :: TestNestedMap'Uint32MapEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                              (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                                  Data.ProtoLens.Encoding.Bytes.isolate
                                                                                    (Prelude.fromIntegral
                                                                                       len)
                                                                                    Data.ProtoLens.parseMessage)
                                                                              "uint32_map"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"uint32Map")
                                        (\ !t -> Data.Map.insert key value t) x))
                        42
                          -> do !(entry :: TestNestedMap'Uint64MapEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                              (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                                  Data.ProtoLens.Encoding.Bytes.isolate
                                                                                    (Prelude.fromIntegral
                                                                                       len)
                                                                                    Data.ProtoLens.parseMessage)
                                                                              "uint64_map"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"uint64Map")
                                        (\ !t -> Data.Map.insert key value t) x))
                        50
                          -> do !(entry :: TestNestedMap'StringMapEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                              (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                                  Data.ProtoLens.Encoding.Bytes.isolate
                                                                                    (Prelude.fromIntegral
                                                                                       len)
                                                                                    Data.ProtoLens.parseMessage)
                                                                              "string_map"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"stringMap")
                                        (\ !t -> Data.Map.insert key value t) x))
                        58
                          -> do !(entry :: TestNestedMap'MapMapEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                           (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                               Data.ProtoLens.Encoding.Bytes.isolate
                                                                                 (Prelude.fromIntegral
                                                                                    len)
                                                                                 Data.ProtoLens.parseMessage)
                                                                           "map_map"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"mapMap")
                                        (\ !t -> Data.Map.insert key value t) x))
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TestNestedMap"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (Data.Monoid.mconcat
                (Prelude.map
                   (\ _v
                      -> (Data.Monoid.<>)
                           (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                           ((Prelude..)
                              (\ bs
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                         (Prelude.fromIntegral (Data.ByteString.length bs)))
                                      (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                              Data.ProtoLens.encodeMessage
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"key") (Prelude.fst _v)
                                 (Lens.Family2.set
                                    (Data.ProtoLens.Field.field @"value") (Prelude.snd _v)
                                    (Data.ProtoLens.defMessage :: TestNestedMap'BoolMapEntry)))))
                   (Data.Map.toList
                      (Lens.Family2.view (Data.ProtoLens.Field.field @"boolMap") _x))))
             ((Data.Monoid.<>)
                (Data.Monoid.mconcat
                   (Prelude.map
                      (\ _v
                         -> (Data.Monoid.<>)
                              (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                              ((Prelude..)
                                 (\ bs
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                            (Prelude.fromIntegral (Data.ByteString.length bs)))
                                         (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                 Data.ProtoLens.encodeMessage
                                 (Lens.Family2.set
                                    (Data.ProtoLens.Field.field @"key") (Prelude.fst _v)
                                    (Lens.Family2.set
                                       (Data.ProtoLens.Field.field @"value") (Prelude.snd _v)
                                       (Data.ProtoLens.defMessage ::
                                          TestNestedMap'Int32MapEntry)))))
                      (Data.Map.toList
                         (Lens.Family2.view (Data.ProtoLens.Field.field @"int32Map") _x))))
                ((Data.Monoid.<>)
                   (Data.Monoid.mconcat
                      (Prelude.map
                         (\ _v
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                                 ((Prelude..)
                                    (\ bs
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                                               (Prelude.fromIntegral (Data.ByteString.length bs)))
                                            (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                    Data.ProtoLens.encodeMessage
                                    (Lens.Family2.set
                                       (Data.ProtoLens.Field.field @"key") (Prelude.fst _v)
                                       (Lens.Family2.set
                                          (Data.ProtoLens.Field.field @"value") (Prelude.snd _v)
                                          (Data.ProtoLens.defMessage ::
                                             TestNestedMap'Int64MapEntry)))))
                         (Data.Map.toList
                            (Lens.Family2.view (Data.ProtoLens.Field.field @"int64Map") _x))))
                   ((Data.Monoid.<>)
                      (Data.Monoid.mconcat
                         (Prelude.map
                            (\ _v
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                                    ((Prelude..)
                                       (\ bs
                                          -> (Data.Monoid.<>)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                  (Prelude.fromIntegral
                                                     (Data.ByteString.length bs)))
                                               (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                       Data.ProtoLens.encodeMessage
                                       (Lens.Family2.set
                                          (Data.ProtoLens.Field.field @"key") (Prelude.fst _v)
                                          (Lens.Family2.set
                                             (Data.ProtoLens.Field.field @"value") (Prelude.snd _v)
                                             (Data.ProtoLens.defMessage ::
                                                TestNestedMap'Uint32MapEntry)))))
                            (Data.Map.toList
                               (Lens.Family2.view (Data.ProtoLens.Field.field @"uint32Map") _x))))
                      ((Data.Monoid.<>)
                         (Data.Monoid.mconcat
                            (Prelude.map
                               (\ _v
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                       ((Prelude..)
                                          (\ bs
                                             -> (Data.Monoid.<>)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                     (Prelude.fromIntegral
                                                        (Data.ByteString.length bs)))
                                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                          Data.ProtoLens.encodeMessage
                                          (Lens.Family2.set
                                             (Data.ProtoLens.Field.field @"key") (Prelude.fst _v)
                                             (Lens.Family2.set
                                                (Data.ProtoLens.Field.field @"value")
                                                (Prelude.snd _v)
                                                (Data.ProtoLens.defMessage ::
                                                   TestNestedMap'Uint64MapEntry)))))
                               (Data.Map.toList
                                  (Lens.Family2.view
                                     (Data.ProtoLens.Field.field @"uint64Map") _x))))
                         ((Data.Monoid.<>)
                            (Data.Monoid.mconcat
                               (Prelude.map
                                  (\ _v
                                     -> (Data.Monoid.<>)
                                          (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                                          ((Prelude..)
                                             (\ bs
                                                -> (Data.Monoid.<>)
                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                        (Prelude.fromIntegral
                                                           (Data.ByteString.length bs)))
                                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                             Data.ProtoLens.encodeMessage
                                             (Lens.Family2.set
                                                (Data.ProtoLens.Field.field @"key") (Prelude.fst _v)
                                                (Lens.Family2.set
                                                   (Data.ProtoLens.Field.field @"value")
                                                   (Prelude.snd _v)
                                                   (Data.ProtoLens.defMessage ::
                                                      TestNestedMap'StringMapEntry)))))
                                  (Data.Map.toList
                                     (Lens.Family2.view
                                        (Data.ProtoLens.Field.field @"stringMap") _x))))
                            ((Data.Monoid.<>)
                               (Data.Monoid.mconcat
                                  (Prelude.map
                                     (\ _v
                                        -> (Data.Monoid.<>)
                                             (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                                             ((Prelude..)
                                                (\ bs
                                                   -> (Data.Monoid.<>)
                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                           (Prelude.fromIntegral
                                                              (Data.ByteString.length bs)))
                                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                                Data.ProtoLens.encodeMessage
                                                (Lens.Family2.set
                                                   (Data.ProtoLens.Field.field @"key")
                                                   (Prelude.fst _v)
                                                   (Lens.Family2.set
                                                      (Data.ProtoLens.Field.field @"value")
                                                      (Prelude.snd _v)
                                                      (Data.ProtoLens.defMessage ::
                                                         TestNestedMap'MapMapEntry)))))
                                     (Data.Map.toList
                                        (Lens.Family2.view
                                           (Data.ProtoLens.Field.field @"mapMap") _x))))
                               (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                  (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))))
instance Control.DeepSeq.NFData TestNestedMap where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TestNestedMap'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TestNestedMap'boolMap x__)
                (Control.DeepSeq.deepseq
                   (_TestNestedMap'int32Map x__)
                   (Control.DeepSeq.deepseq
                      (_TestNestedMap'int64Map x__)
                      (Control.DeepSeq.deepseq
                         (_TestNestedMap'uint32Map x__)
                         (Control.DeepSeq.deepseq
                            (_TestNestedMap'uint64Map x__)
                            (Control.DeepSeq.deepseq
                               (_TestNestedMap'stringMap x__)
                               (Control.DeepSeq.deepseq (_TestNestedMap'mapMap x__) ())))))))
{- | Fields :
     
         * 'Proto.JsonFormatProto3_Fields.key' @:: Lens' TestNestedMap'BoolMapEntry Prelude.Bool@
         * 'Proto.JsonFormatProto3_Fields.value' @:: Lens' TestNestedMap'BoolMapEntry Data.Int.Int32@ -}
data TestNestedMap'BoolMapEntry
  = TestNestedMap'BoolMapEntry'_constructor {_TestNestedMap'BoolMapEntry'key :: !Prelude.Bool,
                                             _TestNestedMap'BoolMapEntry'value :: !Data.Int.Int32,
                                             _TestNestedMap'BoolMapEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TestNestedMap'BoolMapEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TestNestedMap'BoolMapEntry "key" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestNestedMap'BoolMapEntry'key
           (\ x__ y__ -> x__ {_TestNestedMap'BoolMapEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TestNestedMap'BoolMapEntry "value" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestNestedMap'BoolMapEntry'value
           (\ x__ y__ -> x__ {_TestNestedMap'BoolMapEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message TestNestedMap'BoolMapEntry where
  messageName _ = Data.Text.pack "proto3.TestNestedMap.BoolMapEntry"
  packedMessageDescriptor _
    = "\n\
      \\fBoolMapEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\bR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\ENQR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"key")) ::
              Data.ProtoLens.FieldDescriptor TestNestedMap'BoolMapEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"value")) ::
              Data.ProtoLens.FieldDescriptor TestNestedMap'BoolMapEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TestNestedMap'BoolMapEntry'_unknownFields
        (\ x__ y__
           -> x__ {_TestNestedMap'BoolMapEntry'_unknownFields = y__})
  defMessage
    = TestNestedMap'BoolMapEntry'_constructor
        {_TestNestedMap'BoolMapEntry'key = Data.ProtoLens.fieldDefault,
         _TestNestedMap'BoolMapEntry'value = Data.ProtoLens.fieldDefault,
         _TestNestedMap'BoolMapEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TestNestedMap'BoolMapEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser TestNestedMap'BoolMapEntry
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "BoolMapEntry"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"key") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt (\ b -> if b then 1 else 0)
                         _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"value") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData TestNestedMap'BoolMapEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TestNestedMap'BoolMapEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TestNestedMap'BoolMapEntry'key x__)
                (Control.DeepSeq.deepseq
                   (_TestNestedMap'BoolMapEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.JsonFormatProto3_Fields.key' @:: Lens' TestNestedMap'Int32MapEntry Data.Int.Int32@
         * 'Proto.JsonFormatProto3_Fields.value' @:: Lens' TestNestedMap'Int32MapEntry Data.Int.Int32@ -}
data TestNestedMap'Int32MapEntry
  = TestNestedMap'Int32MapEntry'_constructor {_TestNestedMap'Int32MapEntry'key :: !Data.Int.Int32,
                                              _TestNestedMap'Int32MapEntry'value :: !Data.Int.Int32,
                                              _TestNestedMap'Int32MapEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TestNestedMap'Int32MapEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TestNestedMap'Int32MapEntry "key" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestNestedMap'Int32MapEntry'key
           (\ x__ y__ -> x__ {_TestNestedMap'Int32MapEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TestNestedMap'Int32MapEntry "value" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestNestedMap'Int32MapEntry'value
           (\ x__ y__ -> x__ {_TestNestedMap'Int32MapEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message TestNestedMap'Int32MapEntry where
  messageName _ = Data.Text.pack "proto3.TestNestedMap.Int32MapEntry"
  packedMessageDescriptor _
    = "\n\
      \\rInt32MapEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\ENQR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\ENQR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"key")) ::
              Data.ProtoLens.FieldDescriptor TestNestedMap'Int32MapEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"value")) ::
              Data.ProtoLens.FieldDescriptor TestNestedMap'Int32MapEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TestNestedMap'Int32MapEntry'_unknownFields
        (\ x__ y__
           -> x__ {_TestNestedMap'Int32MapEntry'_unknownFields = y__})
  defMessage
    = TestNestedMap'Int32MapEntry'_constructor
        {_TestNestedMap'Int32MapEntry'key = Data.ProtoLens.fieldDefault,
         _TestNestedMap'Int32MapEntry'value = Data.ProtoLens.fieldDefault,
         _TestNestedMap'Int32MapEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TestNestedMap'Int32MapEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser TestNestedMap'Int32MapEntry
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Int32MapEntry"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"key") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"value") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData TestNestedMap'Int32MapEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TestNestedMap'Int32MapEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TestNestedMap'Int32MapEntry'key x__)
                (Control.DeepSeq.deepseq
                   (_TestNestedMap'Int32MapEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.JsonFormatProto3_Fields.key' @:: Lens' TestNestedMap'Int64MapEntry Data.Int.Int64@
         * 'Proto.JsonFormatProto3_Fields.value' @:: Lens' TestNestedMap'Int64MapEntry Data.Int.Int32@ -}
data TestNestedMap'Int64MapEntry
  = TestNestedMap'Int64MapEntry'_constructor {_TestNestedMap'Int64MapEntry'key :: !Data.Int.Int64,
                                              _TestNestedMap'Int64MapEntry'value :: !Data.Int.Int32,
                                              _TestNestedMap'Int64MapEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TestNestedMap'Int64MapEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TestNestedMap'Int64MapEntry "key" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestNestedMap'Int64MapEntry'key
           (\ x__ y__ -> x__ {_TestNestedMap'Int64MapEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TestNestedMap'Int64MapEntry "value" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestNestedMap'Int64MapEntry'value
           (\ x__ y__ -> x__ {_TestNestedMap'Int64MapEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message TestNestedMap'Int64MapEntry where
  messageName _ = Data.Text.pack "proto3.TestNestedMap.Int64MapEntry"
  packedMessageDescriptor _
    = "\n\
      \\rInt64MapEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\ETXR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\ENQR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"key")) ::
              Data.ProtoLens.FieldDescriptor TestNestedMap'Int64MapEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"value")) ::
              Data.ProtoLens.FieldDescriptor TestNestedMap'Int64MapEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TestNestedMap'Int64MapEntry'_unknownFields
        (\ x__ y__
           -> x__ {_TestNestedMap'Int64MapEntry'_unknownFields = y__})
  defMessage
    = TestNestedMap'Int64MapEntry'_constructor
        {_TestNestedMap'Int64MapEntry'key = Data.ProtoLens.fieldDefault,
         _TestNestedMap'Int64MapEntry'value = Data.ProtoLens.fieldDefault,
         _TestNestedMap'Int64MapEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TestNestedMap'Int64MapEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser TestNestedMap'Int64MapEntry
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Int64MapEntry"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"key") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"value") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData TestNestedMap'Int64MapEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TestNestedMap'Int64MapEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TestNestedMap'Int64MapEntry'key x__)
                (Control.DeepSeq.deepseq
                   (_TestNestedMap'Int64MapEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.JsonFormatProto3_Fields.key' @:: Lens' TestNestedMap'MapMapEntry Data.Text.Text@
         * 'Proto.JsonFormatProto3_Fields.value' @:: Lens' TestNestedMap'MapMapEntry TestNestedMap@
         * 'Proto.JsonFormatProto3_Fields.maybe'value' @:: Lens' TestNestedMap'MapMapEntry (Prelude.Maybe TestNestedMap)@ -}
data TestNestedMap'MapMapEntry
  = TestNestedMap'MapMapEntry'_constructor {_TestNestedMap'MapMapEntry'key :: !Data.Text.Text,
                                            _TestNestedMap'MapMapEntry'value :: !(Prelude.Maybe TestNestedMap),
                                            _TestNestedMap'MapMapEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TestNestedMap'MapMapEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TestNestedMap'MapMapEntry "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestNestedMap'MapMapEntry'key
           (\ x__ y__ -> x__ {_TestNestedMap'MapMapEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TestNestedMap'MapMapEntry "value" TestNestedMap where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestNestedMap'MapMapEntry'value
           (\ x__ y__ -> x__ {_TestNestedMap'MapMapEntry'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TestNestedMap'MapMapEntry "maybe'value" (Prelude.Maybe TestNestedMap) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestNestedMap'MapMapEntry'value
           (\ x__ y__ -> x__ {_TestNestedMap'MapMapEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message TestNestedMap'MapMapEntry where
  messageName _ = Data.Text.pack "proto3.TestNestedMap.MapMapEntry"
  packedMessageDescriptor _
    = "\n\
      \\vMapMapEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2+\n\
      \\ENQvalue\CAN\STX \SOH(\v2\NAK.proto3.TestNestedMapR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"key")) ::
              Data.ProtoLens.FieldDescriptor TestNestedMap'MapMapEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TestNestedMap)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor TestNestedMap'MapMapEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TestNestedMap'MapMapEntry'_unknownFields
        (\ x__ y__
           -> x__ {_TestNestedMap'MapMapEntry'_unknownFields = y__})
  defMessage
    = TestNestedMap'MapMapEntry'_constructor
        {_TestNestedMap'MapMapEntry'key = Data.ProtoLens.fieldDefault,
         _TestNestedMap'MapMapEntry'value = Prelude.Nothing,
         _TestNestedMap'MapMapEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TestNestedMap'MapMapEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser TestNestedMap'MapMapEntry
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MapMapEntry"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"key") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8 _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'value") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData TestNestedMap'MapMapEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TestNestedMap'MapMapEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TestNestedMap'MapMapEntry'key x__)
                (Control.DeepSeq.deepseq
                   (_TestNestedMap'MapMapEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.JsonFormatProto3_Fields.key' @:: Lens' TestNestedMap'StringMapEntry Data.Text.Text@
         * 'Proto.JsonFormatProto3_Fields.value' @:: Lens' TestNestedMap'StringMapEntry Data.Int.Int32@ -}
data TestNestedMap'StringMapEntry
  = TestNestedMap'StringMapEntry'_constructor {_TestNestedMap'StringMapEntry'key :: !Data.Text.Text,
                                               _TestNestedMap'StringMapEntry'value :: !Data.Int.Int32,
                                               _TestNestedMap'StringMapEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TestNestedMap'StringMapEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TestNestedMap'StringMapEntry "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestNestedMap'StringMapEntry'key
           (\ x__ y__ -> x__ {_TestNestedMap'StringMapEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TestNestedMap'StringMapEntry "value" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestNestedMap'StringMapEntry'value
           (\ x__ y__ -> x__ {_TestNestedMap'StringMapEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message TestNestedMap'StringMapEntry where
  messageName _
    = Data.Text.pack "proto3.TestNestedMap.StringMapEntry"
  packedMessageDescriptor _
    = "\n\
      \\SOStringMapEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\ENQR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"key")) ::
              Data.ProtoLens.FieldDescriptor TestNestedMap'StringMapEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"value")) ::
              Data.ProtoLens.FieldDescriptor TestNestedMap'StringMapEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TestNestedMap'StringMapEntry'_unknownFields
        (\ x__ y__
           -> x__ {_TestNestedMap'StringMapEntry'_unknownFields = y__})
  defMessage
    = TestNestedMap'StringMapEntry'_constructor
        {_TestNestedMap'StringMapEntry'key = Data.ProtoLens.fieldDefault,
         _TestNestedMap'StringMapEntry'value = Data.ProtoLens.fieldDefault,
         _TestNestedMap'StringMapEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TestNestedMap'StringMapEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser TestNestedMap'StringMapEntry
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "StringMapEntry"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"key") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8 _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"value") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData TestNestedMap'StringMapEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TestNestedMap'StringMapEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TestNestedMap'StringMapEntry'key x__)
                (Control.DeepSeq.deepseq
                   (_TestNestedMap'StringMapEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.JsonFormatProto3_Fields.key' @:: Lens' TestNestedMap'Uint32MapEntry Data.Word.Word32@
         * 'Proto.JsonFormatProto3_Fields.value' @:: Lens' TestNestedMap'Uint32MapEntry Data.Int.Int32@ -}
data TestNestedMap'Uint32MapEntry
  = TestNestedMap'Uint32MapEntry'_constructor {_TestNestedMap'Uint32MapEntry'key :: !Data.Word.Word32,
                                               _TestNestedMap'Uint32MapEntry'value :: !Data.Int.Int32,
                                               _TestNestedMap'Uint32MapEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TestNestedMap'Uint32MapEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TestNestedMap'Uint32MapEntry "key" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestNestedMap'Uint32MapEntry'key
           (\ x__ y__ -> x__ {_TestNestedMap'Uint32MapEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TestNestedMap'Uint32MapEntry "value" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestNestedMap'Uint32MapEntry'value
           (\ x__ y__ -> x__ {_TestNestedMap'Uint32MapEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message TestNestedMap'Uint32MapEntry where
  messageName _
    = Data.Text.pack "proto3.TestNestedMap.Uint32MapEntry"
  packedMessageDescriptor _
    = "\n\
      \\SOUint32MapEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\rR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\ENQR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"key")) ::
              Data.ProtoLens.FieldDescriptor TestNestedMap'Uint32MapEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"value")) ::
              Data.ProtoLens.FieldDescriptor TestNestedMap'Uint32MapEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TestNestedMap'Uint32MapEntry'_unknownFields
        (\ x__ y__
           -> x__ {_TestNestedMap'Uint32MapEntry'_unknownFields = y__})
  defMessage
    = TestNestedMap'Uint32MapEntry'_constructor
        {_TestNestedMap'Uint32MapEntry'key = Data.ProtoLens.fieldDefault,
         _TestNestedMap'Uint32MapEntry'value = Data.ProtoLens.fieldDefault,
         _TestNestedMap'Uint32MapEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TestNestedMap'Uint32MapEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser TestNestedMap'Uint32MapEntry
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Uint32MapEntry"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"key") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"value") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData TestNestedMap'Uint32MapEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TestNestedMap'Uint32MapEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TestNestedMap'Uint32MapEntry'key x__)
                (Control.DeepSeq.deepseq
                   (_TestNestedMap'Uint32MapEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.JsonFormatProto3_Fields.key' @:: Lens' TestNestedMap'Uint64MapEntry Data.Word.Word64@
         * 'Proto.JsonFormatProto3_Fields.value' @:: Lens' TestNestedMap'Uint64MapEntry Data.Int.Int32@ -}
data TestNestedMap'Uint64MapEntry
  = TestNestedMap'Uint64MapEntry'_constructor {_TestNestedMap'Uint64MapEntry'key :: !Data.Word.Word64,
                                               _TestNestedMap'Uint64MapEntry'value :: !Data.Int.Int32,
                                               _TestNestedMap'Uint64MapEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TestNestedMap'Uint64MapEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TestNestedMap'Uint64MapEntry "key" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestNestedMap'Uint64MapEntry'key
           (\ x__ y__ -> x__ {_TestNestedMap'Uint64MapEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TestNestedMap'Uint64MapEntry "value" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestNestedMap'Uint64MapEntry'value
           (\ x__ y__ -> x__ {_TestNestedMap'Uint64MapEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message TestNestedMap'Uint64MapEntry where
  messageName _
    = Data.Text.pack "proto3.TestNestedMap.Uint64MapEntry"
  packedMessageDescriptor _
    = "\n\
      \\SOUint64MapEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\EOTR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\ENQR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"key")) ::
              Data.ProtoLens.FieldDescriptor TestNestedMap'Uint64MapEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"value")) ::
              Data.ProtoLens.FieldDescriptor TestNestedMap'Uint64MapEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TestNestedMap'Uint64MapEntry'_unknownFields
        (\ x__ y__
           -> x__ {_TestNestedMap'Uint64MapEntry'_unknownFields = y__})
  defMessage
    = TestNestedMap'Uint64MapEntry'_constructor
        {_TestNestedMap'Uint64MapEntry'key = Data.ProtoLens.fieldDefault,
         _TestNestedMap'Uint64MapEntry'value = Data.ProtoLens.fieldDefault,
         _TestNestedMap'Uint64MapEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TestNestedMap'Uint64MapEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser TestNestedMap'Uint64MapEntry
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Uint64MapEntry"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"key") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"value") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData TestNestedMap'Uint64MapEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TestNestedMap'Uint64MapEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TestNestedMap'Uint64MapEntry'key x__)
                (Control.DeepSeq.deepseq
                   (_TestNestedMap'Uint64MapEntry'value x__) ()))
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
         * 'Proto.JsonFormatProto3_Fields.oneofMessageValue' @:: Lens' TestOneof MessageType@ -}
data TestOneof
  = TestOneof'_constructor {_TestOneof'oneofValue :: !(Prelude.Maybe TestOneof'OneofValue),
                            _TestOneof'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TestOneof where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data TestOneof'OneofValue
  = TestOneof'OneofInt32Value !Data.Int.Int32 |
    TestOneof'OneofStringValue !Data.Text.Text |
    TestOneof'OneofBytesValue !Data.ByteString.ByteString |
    TestOneof'OneofEnumValue !EnumType |
    TestOneof'OneofMessageValue !MessageType
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField TestOneof "maybe'oneofValue" (Prelude.Maybe TestOneof'OneofValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestOneof'oneofValue
           (\ x__ y__ -> x__ {_TestOneof'oneofValue = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TestOneof "maybe'oneofInt32Value" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestOneof'oneofValue
           (\ x__ y__ -> x__ {_TestOneof'oneofValue = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (TestOneof'OneofInt32Value x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap TestOneof'OneofInt32Value y__))
instance Data.ProtoLens.Field.HasField TestOneof "oneofInt32Value" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestOneof'oneofValue
           (\ x__ y__ -> x__ {_TestOneof'oneofValue = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (TestOneof'OneofInt32Value x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap TestOneof'OneofInt32Value y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField TestOneof "maybe'oneofStringValue" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestOneof'oneofValue
           (\ x__ y__ -> x__ {_TestOneof'oneofValue = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (TestOneof'OneofStringValue x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap TestOneof'OneofStringValue y__))
instance Data.ProtoLens.Field.HasField TestOneof "oneofStringValue" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestOneof'oneofValue
           (\ x__ y__ -> x__ {_TestOneof'oneofValue = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (TestOneof'OneofStringValue x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap TestOneof'OneofStringValue y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField TestOneof "maybe'oneofBytesValue" (Prelude.Maybe Data.ByteString.ByteString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestOneof'oneofValue
           (\ x__ y__ -> x__ {_TestOneof'oneofValue = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (TestOneof'OneofBytesValue x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap TestOneof'OneofBytesValue y__))
instance Data.ProtoLens.Field.HasField TestOneof "oneofBytesValue" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestOneof'oneofValue
           (\ x__ y__ -> x__ {_TestOneof'oneofValue = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (TestOneof'OneofBytesValue x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap TestOneof'OneofBytesValue y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField TestOneof "maybe'oneofEnumValue" (Prelude.Maybe EnumType) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestOneof'oneofValue
           (\ x__ y__ -> x__ {_TestOneof'oneofValue = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (TestOneof'OneofEnumValue x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap TestOneof'OneofEnumValue y__))
instance Data.ProtoLens.Field.HasField TestOneof "oneofEnumValue" EnumType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestOneof'oneofValue
           (\ x__ y__ -> x__ {_TestOneof'oneofValue = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (TestOneof'OneofEnumValue x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap TestOneof'OneofEnumValue y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField TestOneof "maybe'oneofMessageValue" (Prelude.Maybe MessageType) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestOneof'oneofValue
           (\ x__ y__ -> x__ {_TestOneof'oneofValue = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (TestOneof'OneofMessageValue x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap TestOneof'OneofMessageValue y__))
instance Data.ProtoLens.Field.HasField TestOneof "oneofMessageValue" MessageType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestOneof'oneofValue
           (\ x__ y__ -> x__ {_TestOneof'oneofValue = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (TestOneof'OneofMessageValue x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap TestOneof'OneofMessageValue y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message TestOneof where
  messageName _ = Data.Text.pack "proto3.TestOneof"
  packedMessageDescriptor _
    = "\n\
      \\tTestOneof\DC2,\n\
      \\DC1oneof_int32_value\CAN\SOH \SOH(\ENQH\NULR\SIoneofInt32Value\DC2.\n\
      \\DC2oneof_string_value\CAN\STX \SOH(\tH\NULR\DLEoneofStringValue\DC2,\n\
      \\DC1oneof_bytes_value\CAN\ETX \SOH(\fH\NULR\SIoneofBytesValue\DC2<\n\
      \\DLEoneof_enum_value\CAN\EOT \SOH(\SO2\DLE.proto3.EnumTypeH\NULR\SOoneofEnumValue\DC2E\n\
      \\DC3oneof_message_value\CAN\ENQ \SOH(\v2\DC3.proto3.MessageTypeH\NULR\DC1oneofMessageValueB\r\n\
      \\voneof_value"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        oneofInt32Value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "oneof_int32_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'oneofInt32Value")) ::
              Data.ProtoLens.FieldDescriptor TestOneof
        oneofStringValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "oneof_string_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'oneofStringValue")) ::
              Data.ProtoLens.FieldDescriptor TestOneof
        oneofBytesValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "oneof_bytes_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'oneofBytesValue")) ::
              Data.ProtoLens.FieldDescriptor TestOneof
        oneofEnumValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "oneof_enum_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor EnumType)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'oneofEnumValue")) ::
              Data.ProtoLens.FieldDescriptor TestOneof
        oneofMessageValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "oneof_message_value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor MessageType)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'oneofMessageValue")) ::
              Data.ProtoLens.FieldDescriptor TestOneof
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, oneofInt32Value__field_descriptor),
           (Data.ProtoLens.Tag 2, oneofStringValue__field_descriptor),
           (Data.ProtoLens.Tag 3, oneofBytesValue__field_descriptor),
           (Data.ProtoLens.Tag 4, oneofEnumValue__field_descriptor),
           (Data.ProtoLens.Tag 5, oneofMessageValue__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TestOneof'_unknownFields
        (\ x__ y__ -> x__ {_TestOneof'_unknownFields = y__})
  defMessage
    = TestOneof'_constructor
        {_TestOneof'oneofValue = Prelude.Nothing,
         _TestOneof'_unknownFields = []}
  parseMessage
    = let
        loop :: TestOneof -> Data.ProtoLens.Encoding.Bytes.Parser TestOneof
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "oneof_int32_value"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"oneofInt32Value") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "oneof_string_value"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"oneofStringValue") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "oneof_bytes_value"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"oneofBytesValue") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "oneof_enum_value"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"oneofEnumValue") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "oneof_message_value"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"oneofMessageValue") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TestOneof"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'oneofValue") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (TestOneof'OneofInt32Value v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral v)
                (Prelude.Just (TestOneof'OneofStringValue v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.Text.Encoding.encodeUtf8 v)
                (Prelude.Just (TestOneof'OneofBytesValue v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                       ((\ bs
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                   (Prelude.fromIntegral (Data.ByteString.length bs)))
                                (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          v)
                (Prelude.Just (TestOneof'OneofEnumValue v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                       ((Prelude..)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                          Prelude.fromEnum v)
                (Prelude.Just (TestOneof'OneofMessageValue v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData TestOneof where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TestOneof'_unknownFields x__)
             (Control.DeepSeq.deepseq (_TestOneof'oneofValue x__) ())
instance Control.DeepSeq.NFData TestOneof'OneofValue where
  rnf (TestOneof'OneofInt32Value x__) = Control.DeepSeq.rnf x__
  rnf (TestOneof'OneofStringValue x__) = Control.DeepSeq.rnf x__
  rnf (TestOneof'OneofBytesValue x__) = Control.DeepSeq.rnf x__
  rnf (TestOneof'OneofEnumValue x__) = Control.DeepSeq.rnf x__
  rnf (TestOneof'OneofMessageValue x__) = Control.DeepSeq.rnf x__
_TestOneof'OneofInt32Value ::
  Data.ProtoLens.Prism.Prism' TestOneof'OneofValue Data.Int.Int32
_TestOneof'OneofInt32Value
  = Data.ProtoLens.Prism.prism'
      TestOneof'OneofInt32Value
      (\ p__
         -> case p__ of
              (TestOneof'OneofInt32Value p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_TestOneof'OneofStringValue ::
  Data.ProtoLens.Prism.Prism' TestOneof'OneofValue Data.Text.Text
_TestOneof'OneofStringValue
  = Data.ProtoLens.Prism.prism'
      TestOneof'OneofStringValue
      (\ p__
         -> case p__ of
              (TestOneof'OneofStringValue p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_TestOneof'OneofBytesValue ::
  Data.ProtoLens.Prism.Prism' TestOneof'OneofValue Data.ByteString.ByteString
_TestOneof'OneofBytesValue
  = Data.ProtoLens.Prism.prism'
      TestOneof'OneofBytesValue
      (\ p__
         -> case p__ of
              (TestOneof'OneofBytesValue p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_TestOneof'OneofEnumValue ::
  Data.ProtoLens.Prism.Prism' TestOneof'OneofValue EnumType
_TestOneof'OneofEnumValue
  = Data.ProtoLens.Prism.prism'
      TestOneof'OneofEnumValue
      (\ p__
         -> case p__ of
              (TestOneof'OneofEnumValue p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_TestOneof'OneofMessageValue ::
  Data.ProtoLens.Prism.Prism' TestOneof'OneofValue MessageType
_TestOneof'OneofMessageValue
  = Data.ProtoLens.Prism.prism'
      TestOneof'OneofMessageValue
      (\ p__
         -> case p__ of
              (TestOneof'OneofMessageValue p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\CANjson_format_proto3.proto\DC2\ACKproto3\"#\n\
    \\vMessageType\DC2\DC4\n\
    \\ENQvalue\CAN\SOH \SOH(\ENQR\ENQvalue\"\252\a\n\
    \\vTestMessage\DC2\GS\n\
    \\n\
    \bool_value\CAN\SOH \SOH(\bR\tboolValue\DC2\US\n\
    \\vint32_value\CAN\STX \SOH(\ENQR\n\
    \int32Value\DC2\US\n\
    \\vint64_value\CAN\ETX \SOH(\ETXR\n\
    \int64Value\DC2!\n\
    \\fuint32_value\CAN\EOT \SOH(\rR\vuint32Value\DC2!\n\
    \\fuint64_value\CAN\ENQ \SOH(\EOTR\vuint64Value\DC2\US\n\
    \\vfloat_value\CAN\ACK \SOH(\STXR\n\
    \floatValue\DC2!\n\
    \\fdouble_value\CAN\a \SOH(\SOHR\vdoubleValue\DC2!\n\
    \\fstring_value\CAN\b \SOH(\tR\vstringValue\DC2\US\n\
    \\vbytes_value\CAN\t \SOH(\fR\n\
    \bytesValue\DC2/\n\
    \\n\
    \enum_value\CAN\n\
    \ \SOH(\SO2\DLE.proto3.EnumTypeR\tenumValue\DC28\n\
    \\rmessage_value\CAN\v \SOH(\v2\DC3.proto3.MessageTypeR\fmessageValue\DC2.\n\
    \\DC3repeated_bool_value\CAN\NAK \ETX(\bR\DC1repeatedBoolValue\DC20\n\
    \\DC4repeated_int32_value\CAN\SYN \ETX(\ENQR\DC2repeatedInt32Value\DC20\n\
    \\DC4repeated_int64_value\CAN\ETB \ETX(\ETXR\DC2repeatedInt64Value\DC22\n\
    \\NAKrepeated_uint32_value\CAN\CAN \ETX(\rR\DC3repeatedUint32Value\DC22\n\
    \\NAKrepeated_uint64_value\CAN\EM \ETX(\EOTR\DC3repeatedUint64Value\DC20\n\
    \\DC4repeated_float_value\CAN\SUB \ETX(\STXR\DC2repeatedFloatValue\DC22\n\
    \\NAKrepeated_double_value\CAN\ESC \ETX(\SOHR\DC3repeatedDoubleValue\DC22\n\
    \\NAKrepeated_string_value\CAN\FS \ETX(\tR\DC3repeatedStringValue\DC20\n\
    \\DC4repeated_bytes_value\CAN\GS \ETX(\fR\DC2repeatedBytesValue\DC2@\n\
    \\DC3repeated_enum_value\CAN\RS \ETX(\SO2\DLE.proto3.EnumTypeR\DC1repeatedEnumValue\DC2I\n\
    \\SYNrepeated_message_value\CAN\US \ETX(\v2\DC3.proto3.MessageTypeR\DC4repeatedMessageValue\"\171\STX\n\
    \\tTestOneof\DC2,\n\
    \\DC1oneof_int32_value\CAN\SOH \SOH(\ENQH\NULR\SIoneofInt32Value\DC2.\n\
    \\DC2oneof_string_value\CAN\STX \SOH(\tH\NULR\DLEoneofStringValue\DC2,\n\
    \\DC1oneof_bytes_value\CAN\ETX \SOH(\fH\NULR\SIoneofBytesValue\DC2<\n\
    \\DLEoneof_enum_value\CAN\EOT \SOH(\SO2\DLE.proto3.EnumTypeH\NULR\SOoneofEnumValue\DC2E\n\
    \\DC3oneof_message_value\CAN\ENQ \SOH(\v2\DC3.proto3.MessageTypeH\NULR\DC1oneofMessageValueB\r\n\
    \\voneof_value\"\231\ENQ\n\
    \\aTestMap\DC27\n\
    \\bbool_map\CAN\SOH \ETX(\v2\FS.proto3.TestMap.BoolMapEntryR\aboolMap\DC2:\n\
    \\tint32_map\CAN\STX \ETX(\v2\GS.proto3.TestMap.Int32MapEntryR\bint32Map\DC2:\n\
    \\tint64_map\CAN\ETX \ETX(\v2\GS.proto3.TestMap.Int64MapEntryR\bint64Map\DC2=\n\
    \\n\
    \uint32_map\CAN\EOT \ETX(\v2\RS.proto3.TestMap.Uint32MapEntryR\tuint32Map\DC2=\n\
    \\n\
    \uint64_map\CAN\ENQ \ETX(\v2\RS.proto3.TestMap.Uint64MapEntryR\tuint64Map\DC2=\n\
    \\n\
    \string_map\CAN\ACK \ETX(\v2\RS.proto3.TestMap.StringMapEntryR\tstringMap\SUB:\n\
    \\fBoolMapEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\bR\ETXkey\DC2\DC4\n\
    \\ENQvalue\CAN\STX \SOH(\ENQR\ENQvalue:\STX8\SOH\SUB;\n\
    \\rInt32MapEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\ENQR\ETXkey\DC2\DC4\n\
    \\ENQvalue\CAN\STX \SOH(\ENQR\ENQvalue:\STX8\SOH\SUB;\n\
    \\rInt64MapEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\ETXR\ETXkey\DC2\DC4\n\
    \\ENQvalue\CAN\STX \SOH(\ENQR\ENQvalue:\STX8\SOH\SUB<\n\
    \\SOUint32MapEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\rR\ETXkey\DC2\DC4\n\
    \\ENQvalue\CAN\STX \SOH(\ENQR\ENQvalue:\STX8\SOH\SUB<\n\
    \\SOUint64MapEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\EOTR\ETXkey\DC2\DC4\n\
    \\ENQvalue\CAN\STX \SOH(\ENQR\ENQvalue:\STX8\SOH\SUB<\n\
    \\SOStringMapEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
    \\ENQvalue\CAN\STX \SOH(\ENQR\ENQvalue:\STX8\SOH\"\159\a\n\
    \\rTestNestedMap\DC2=\n\
    \\bbool_map\CAN\SOH \ETX(\v2\".proto3.TestNestedMap.BoolMapEntryR\aboolMap\DC2@\n\
    \\tint32_map\CAN\STX \ETX(\v2#.proto3.TestNestedMap.Int32MapEntryR\bint32Map\DC2@\n\
    \\tint64_map\CAN\ETX \ETX(\v2#.proto3.TestNestedMap.Int64MapEntryR\bint64Map\DC2C\n\
    \\n\
    \uint32_map\CAN\EOT \ETX(\v2$.proto3.TestNestedMap.Uint32MapEntryR\tuint32Map\DC2C\n\
    \\n\
    \uint64_map\CAN\ENQ \ETX(\v2$.proto3.TestNestedMap.Uint64MapEntryR\tuint64Map\DC2C\n\
    \\n\
    \string_map\CAN\ACK \ETX(\v2$.proto3.TestNestedMap.StringMapEntryR\tstringMap\DC2:\n\
    \\amap_map\CAN\a \ETX(\v2!.proto3.TestNestedMap.MapMapEntryR\ACKmapMap\SUB:\n\
    \\fBoolMapEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\bR\ETXkey\DC2\DC4\n\
    \\ENQvalue\CAN\STX \SOH(\ENQR\ENQvalue:\STX8\SOH\SUB;\n\
    \\rInt32MapEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\ENQR\ETXkey\DC2\DC4\n\
    \\ENQvalue\CAN\STX \SOH(\ENQR\ENQvalue:\STX8\SOH\SUB;\n\
    \\rInt64MapEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\ETXR\ETXkey\DC2\DC4\n\
    \\ENQvalue\CAN\STX \SOH(\ENQR\ENQvalue:\STX8\SOH\SUB<\n\
    \\SOUint32MapEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\rR\ETXkey\DC2\DC4\n\
    \\ENQvalue\CAN\STX \SOH(\ENQR\ENQvalue:\STX8\SOH\SUB<\n\
    \\SOUint64MapEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\EOTR\ETXkey\DC2\DC4\n\
    \\ENQvalue\CAN\STX \SOH(\ENQR\ENQvalue:\STX8\SOH\SUB<\n\
    \\SOStringMapEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
    \\ENQvalue\CAN\STX \SOH(\ENQR\ENQvalue:\STX8\SOH\SUBP\n\
    \\vMapMapEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2+\n\
    \\ENQvalue\CAN\STX \SOH(\v2\NAK.proto3.TestNestedMapR\ENQvalue:\STX8\SOH*\FS\n\
    \\bEnumType\DC2\a\n\
    \\ETXFOO\DLE\NUL\DC2\a\n\
    \\ETXBAR\DLE\SOHB,\n\
    \\CANcom.google.protobuf.utilB\DLEJsonFormatProto3J\206&\n\
    \\ACK\DC2\EOT\RS\NULq\SOH\n\
    \\204\f\n\
    \\SOH\f\DC2\ETX\RS\NUL\DC22\193\f Protocol Buffers - Google's data interchange format\n\
    \ Copyright 2008 Google Inc.  All rights reserved.\n\
    \ https://developers.google.com/protocol-buffers/\n\
    \\n\
    \ Redistribution and use in source and binary forms, with or without\n\
    \ modification, are permitted provided that the following conditions are\n\
    \ met:\n\
    \\n\
    \     * Redistributions of source code must retain the above copyright\n\
    \ notice, this list of conditions and the following disclaimer.\n\
    \     * Redistributions in binary form must reproduce the above\n\
    \ copyright notice, this list of conditions and the following disclaimer\n\
    \ in the documentation and/or other materials provided with the\n\
    \ distribution.\n\
    \     * Neither the name of Google Inc. nor the names of its\n\
    \ contributors may be used to endorse or promote products derived from\n\
    \ this software without specific prior written permission.\n\
    \\n\
    \ THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS\n\
    \ \"AS IS\" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT\n\
    \ LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR\n\
    \ A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT\n\
    \ OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,\n\
    \ SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT\n\
    \ LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,\n\
    \ DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY\n\
    \ THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT\n\
    \ (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE\n\
    \ OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.\n\
    \\n\
    \\b\n\
    \\SOH\STX\DC2\ETX \NUL\SI\n\
    \\b\n\
    \\SOH\b\DC2\ETX\"\NUL1\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\"\NUL1\n\
    \\b\n\
    \\SOH\b\DC2\ETX#\NUL1\n\
    \\t\n\
    \\STX\b\b\DC2\ETX#\NUL1\n\
    \\168\STX\n\
    \\STX\ENQ\NUL\DC2\EOT-\NUL0\SOH2\155\STXimport \"google/protobuf/duration.proto\";\n\
    \import \"google/protobuf/timestamp.proto\";\n\
    \import \"google/protobuf/wrappers.proto\";\n\
    \import \"google/protobuf/struct.proto\";\n\
    \import \"google/protobuf/any.proto\";\n\
    \import \"google/protobuf/field_mask.proto\";\n\
    \import \"google/protobuf/unittest.proto\";\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ENQ\NUL\SOH\DC2\ETX-\ENQ\r\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\NUL\DC2\ETX.\STX\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\SOH\DC2\ETX.\STX\ENQ\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\STX\DC2\ETX.\b\t\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\SOH\DC2\ETX/\STX\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\SOH\DC2\ETX/\STX\ENQ\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\STX\DC2\ETX/\b\t\n\
    \\n\
    \\n\
    \\STX\EOT\NUL\DC2\EOT2\NUL4\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX2\b\DC3\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX3\STX\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX3\STX\a\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX3\b\r\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX3\DLE\DC1\n\
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOT6\NULN\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX6\b\DC3\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX7\STX\SYN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX7\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX7\a\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX7\DC4\NAK\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX8\STX\CAN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX8\STX\a\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX8\b\DC3\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX8\SYN\ETB\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETX9\STX\CAN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ENQ\DC2\ETX9\STX\a\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX9\b\DC3\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX9\SYN\ETB\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\ETX:\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ENQ\DC2\ETX:\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\ETX:\t\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\ETX:\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\EOT\DC2\ETX;\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ENQ\DC2\ETX;\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\SOH\DC2\ETX;\t\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ETX\DC2\ETX;\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\ENQ\DC2\ETX<\STX\CAN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\ENQ\DC2\ETX<\STX\a\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\SOH\DC2\ETX<\b\DC3\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\ETX\DC2\ETX<\SYN\ETB\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\ACK\DC2\ETX=\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\ENQ\DC2\ETX=\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\SOH\DC2\ETX=\t\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\ETX\DC2\ETX=\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\a\DC2\ETX>\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\a\ENQ\DC2\ETX>\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\a\SOH\DC2\ETX>\t\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\a\ETX\DC2\ETX>\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\b\DC2\ETX?\STX\CAN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\b\ENQ\DC2\ETX?\STX\a\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\b\SOH\DC2\ETX?\b\DC3\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\b\ETX\DC2\ETX?\SYN\ETB\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\t\DC2\ETX@\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\t\ACK\DC2\ETX@\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\t\SOH\DC2\ETX@\v\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\t\ETX\DC2\ETX@\CAN\SUB\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\n\
    \\DC2\ETXA\STX!\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\n\
    \\ACK\DC2\ETXA\STX\r\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\n\
    \\SOH\DC2\ETXA\SO\ESC\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\n\
    \\ETX\DC2\ETXA\RS \n\
    \\v\n\
    \\EOT\EOT\SOH\STX\v\DC2\ETXC\STX)\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\v\EOT\DC2\ETXC\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\v\ENQ\DC2\ETXC\v\SI\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\v\SOH\DC2\ETXC\DLE#\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\v\ETX\DC2\ETXC&(\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\f\DC2\ETXD\STX+\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\f\EOT\DC2\ETXD\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\f\ENQ\DC2\ETXD\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\f\SOH\DC2\ETXD\DC1%\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\f\ETX\DC2\ETXD(*\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\r\DC2\ETXE\STX+\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\r\EOT\DC2\ETXE\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\r\ENQ\DC2\ETXE\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\r\SOH\DC2\ETXE\DC1%\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\r\ETX\DC2\ETXE(*\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\SO\DC2\ETXF\STX-\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SO\EOT\DC2\ETXF\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SO\ENQ\DC2\ETXF\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SO\SOH\DC2\ETXF\DC2'\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SO\ETX\DC2\ETXF*,\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\SI\DC2\ETXG\STX-\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SI\EOT\DC2\ETXG\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SI\ENQ\DC2\ETXG\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SI\SOH\DC2\ETXG\DC2'\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SI\ETX\DC2\ETXG*,\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\DLE\DC2\ETXH\STX+\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\DLE\EOT\DC2\ETXH\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\DLE\ENQ\DC2\ETXH\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\DLE\SOH\DC2\ETXH\DC1%\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\DLE\ETX\DC2\ETXH(*\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\DC1\DC2\ETXI\STX-\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\DC1\EOT\DC2\ETXI\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\DC1\ENQ\DC2\ETXI\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\DC1\SOH\DC2\ETXI\DC2'\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\DC1\ETX\DC2\ETXI*,\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\DC2\DC2\ETXJ\STX-\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\DC2\EOT\DC2\ETXJ\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\DC2\ENQ\DC2\ETXJ\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\DC2\SOH\DC2\ETXJ\DC2'\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\DC2\ETX\DC2\ETXJ*,\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\DC3\DC2\ETXK\STX+\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\DC3\EOT\DC2\ETXK\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\DC3\ENQ\DC2\ETXK\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\DC3\SOH\DC2\ETXK\DC1%\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\DC3\ETX\DC2\ETXK(*\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\DC4\DC2\ETXL\STX-\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\DC4\EOT\DC2\ETXL\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\DC4\ACK\DC2\ETXL\v\DC3\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\DC4\SOH\DC2\ETXL\DC4'\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\DC4\ETX\DC2\ETXL*,\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NAK\DC2\ETXM\STX3\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NAK\EOT\DC2\ETXM\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NAK\ACK\DC2\ETXM\v\SYN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NAK\SOH\DC2\ETXM\ETB-\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NAK\ETX\DC2\ETXM02\n\
    \\n\
    \\n\
    \\STX\EOT\STX\DC2\EOTP\NUL^\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETXP\b\DC1\n\
    \\200\STX\n\
    \\EOT\EOT\STX\b\NUL\DC2\EOTW\STX]\ETX\SUB\185\STX In JSON format oneof fields behave mostly the same as optional\n\
    \ fields except that:\n\
    \   1. Oneof fields have field presence information and will be\n\
    \      printed if it's set no matter whether it's the default value.\n\
    \   2. Multiple oneof fields in the same oneof cannot appear at the\n\
    \      same time in the input.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\b\NUL\SOH\DC2\ETXW\b\DC3\n\
    \\v\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETXX\EOT \n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETXX\EOT\t\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETXX\n\
    \\ESC\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETXX\RS\US\n\
    \\v\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETXY\EOT\"\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETXY\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETXY\v\GS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETXY !\n\
    \\v\n\
    \\EOT\EOT\STX\STX\STX\DC2\ETXZ\EOT \n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ENQ\DC2\ETXZ\EOT\t\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\ETXZ\n\
    \\ESC\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\ETXZ\RS\US\n\
    \\v\n\
    \\EOT\EOT\STX\STX\ETX\DC2\ETX[\EOT\"\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ACK\DC2\ETX[\EOT\f\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\SOH\DC2\ETX[\r\GS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ETX\DC2\ETX[ !\n\
    \\v\n\
    \\EOT\EOT\STX\STX\EOT\DC2\ETX\\\EOT(\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\ACK\DC2\ETX\\\EOT\SI\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\SOH\DC2\ETX\\\DLE#\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\ETX\DC2\ETX\\&'\n\
    \\n\
    \\n\
    \\STX\EOT\ETX\DC2\EOT`\NULg\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX`\b\SI\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETXa\STX \n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ACK\DC2\ETXa\STX\DC2\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETXa\DC3\ESC\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETXa\RS\US\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETXb\STX\"\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ACK\DC2\ETXb\STX\DC3\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETXb\DC4\GS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETXb !\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\STX\DC2\ETXc\STX\"\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ACK\DC2\ETXc\STX\DC3\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\SOH\DC2\ETXc\DC4\GS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ETX\DC2\ETXc !\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\ETX\DC2\ETXd\STX$\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\ACK\DC2\ETXd\STX\DC4\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\SOH\DC2\ETXd\NAK\US\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\ETX\DC2\ETXd\"#\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\EOT\DC2\ETXe\STX$\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\ACK\DC2\ETXe\STX\DC4\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\SOH\DC2\ETXe\NAK\US\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\ETX\DC2\ETXe\"#\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\ENQ\DC2\ETXf\STX$\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ENQ\ACK\DC2\ETXf\STX\DC4\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ENQ\SOH\DC2\ETXf\NAK\US\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ENQ\ETX\DC2\ETXf\"#\n\
    \\n\
    \\n\
    \\STX\EOT\EOT\DC2\EOTi\NULq\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETXi\b\NAK\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETXj\STX \n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ACK\DC2\ETXj\STX\DC2\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETXj\DC3\ESC\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETXj\RS\US\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\ETXk\STX\"\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ACK\DC2\ETXk\STX\DC3\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\ETXk\DC4\GS\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\ETXk !\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\STX\DC2\ETXl\STX\"\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ACK\DC2\ETXl\STX\DC3\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\SOH\DC2\ETXl\DC4\GS\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ETX\DC2\ETXl !\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\ETX\DC2\ETXm\STX$\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\ACK\DC2\ETXm\STX\DC4\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\SOH\DC2\ETXm\NAK\US\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\ETX\DC2\ETXm\"#\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\EOT\DC2\ETXn\STX$\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\EOT\ACK\DC2\ETXn\STX\DC4\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\EOT\SOH\DC2\ETXn\NAK\US\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\EOT\ETX\DC2\ETXn\"#\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\ENQ\DC2\ETXo\STX$\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ENQ\ACK\DC2\ETXo\STX\DC4\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ENQ\SOH\DC2\ETXo\NAK\US\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ENQ\ETX\DC2\ETXo\"#\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\ACK\DC2\ETXp\STX)\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ACK\ACK\DC2\ETXp\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ACK\SOH\DC2\ETXp\GS$\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ACK\ETX\DC2\ETXp'(b\ACKproto3"