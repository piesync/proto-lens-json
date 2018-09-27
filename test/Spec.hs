{-# LANGUAGE NegativeLiterals #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE QuasiQuotes #-}

module Main where

import Data.Int
import Data.Maybe (fromJust)
import Data.Word

import Data.Aeson (Value, decode)
import Data.Aeson.QQ
import qualified Data.Map as Map
import Data.ProtoLens
import Data.ProtoLens.Default (def)
import Data.ProtoLens.JSON
import Lens.Family2 ((.~))
import Test.Hspec

import Proto.JsonFormatProto3
import Proto.JsonFormatProto3_Fields

main :: IO ()
main = hspec spec

shouldEncodeAs :: Message msg => msg -> Value -> Expectation
shouldEncodeAs msg expected = (fromJust $ decode $ encodeMessageJSON msg) `shouldBe` expected

empty :: TestMessage
empty = def

infixl 1 &
(&) :: a -> (a -> a) -> a
x & f = f x

filled :: TestMessage
filled = empty
  & int32Value   .~ 20
  & int64Value   .~ -20
  & uint32Value  .~ 3120987654
  & uint64Value  .~ 12345678900
  & floatValue   .~ -1/0
  & doubleValue  .~ 3.1415
  & boolValue    .~ True
  & stringValue  .~ "foo"
  & bytesValue   .~ "bar"
  & messageValue .~ (def & value .~ 10)
  & enumValue    .~ BAR
  & repeatedInt32Value   .~ [0x7FFFFFFF, -2147483648]
  & repeatedInt64Value   .~ [9007199254740992, -9007199254740992]
  & repeatedUint32Value  .~ [0xFFFFFFF, 0x7FFFFFF]
  & repeatedUint64Value  .~ [9007199254740992, 9007199254740991]
  & repeatedFloatValue   .~ [0]
  & repeatedDoubleValue  .~ [1E-15, 1/0]
  & repeatedBoolValue    .~ [True, False]
  & repeatedStringValue  .~ ["Few symbols!#$,;", "bar"]
  & repeatedBytesValue   .~ ["foo", "bar"]
  & repeatedMessageValue .~ [def & value .~ 10, def & value .~ 11]
  & repeatedEnumValue    .~ [FOO, BAR]

filledMap :: TestMap
filledMap = def
  & boolMap   .~ Map.fromList [(True, 1), (False, 2)]
  & int32Map  .~ Map.fromList [(1, 2), (2, 3)]
  & int64Map  .~ Map.fromList [(1, 2), (2, 3)]
  & uint32Map .~ Map.fromList [(1, 2), (2, 3)]
  & uint64Map .~ Map.fromList [(1, 2), (2, 3)]
  & stringMap .~ Map.fromList [("1", 2), ("null", 3)]

spec :: Spec
spec = do

  it "encodes all types to JSON" $
    filled `shouldEncodeAs` [aesonQQ|
      {
        "int32Value": 20,
        "int64Value": "-20",
        "uint32Value": 3120987654,
        "uint64Value": "12345678900",
        "floatValue": "-Infinity",
        "doubleValue": 3.1415,
        "boolValue": true,
        "stringValue": "foo",
        "bytesValue": "YmFy",
        "messageValue": {"value": 10},
        "enumValue": "BAR",
        "repeatedInt32Value": [2147483647, -2147483648],
        "repeatedInt64Value": ["9007199254740992", "-9007199254740992"],
        "repeatedUint32Value": [268435455, 134217727],
        "repeatedUint64Value": ["9007199254740992", "9007199254740991"],
        "repeatedFloatValue": [0],
        "repeatedDoubleValue": [1e-15, "Infinity"],
        "repeatedBoolValue": [true, false],
        "repeatedStringValue": ["Few symbols!#$,;", "bar"],
        "repeatedBytesValue": ["Zm9v", "YmFy"],
        "repeatedMessageValue": [{"value": 10}, {"value": 11}],
        "repeatedEnumValue": ["FOO", "BAR"]
      }
    |]

  it "encodes empty scalar fields (this is non-standard and will become optional)" $
    empty `shouldEncodeAs` [aesonQQ|
      {
        "repeatedStringValue": [],
        "stringValue": "",
        "repeatedBoolValue": [],
        "repeatedUint32Value": [],
        "repeatedInt32Value": [],
        "enumValue": "FOO",
        "int32Value": 0,
        "floatValue": 0,
        "int64Value": "0",
        "uint32Value": 0,
        "repeatedBytesValue": [],
        "repeatedUint64Value": [],
        "repeatedDoubleValue": [],
        "bytesValue": "",
        "boolValue": false,
        "repeatedEnumValue": [],
        "uint64Value": "0",
        "doubleValue": 0,
        "repeatedFloatValue": [],
        "repeatedInt64Value": [],
        "repeatedMessageValue": []
      }
    |]

  it "encodes NaN as string in float and double values" $ do
    let msg = empty & floatValue .~ read "NaN" & doubleValue .~ read "NaN"
    let decoded = fromJust $ decode $ encodeMessageJSON msg :: Map.Map String Value

    Map.lookup "floatValue" decoded `shouldBe` Just [aesonQQ| "NaN" |]

  it "encodes map fields" $
    filledMap `shouldEncodeAs` [aesonQQ|
      {
        "boolMap": {"false": 2, "true": 1},
        "int32Map": {"1": 2, "2": 3},
        "int64Map": {"1": 2, "2": 3},
        "uint32Map": {"1": 2, "2": 3},
        "uint64Map": {"1": 2, "2": 3},
        "stringMap": {"1": 2, "null": 3}
      }
    |]

  it "encodes only present oneof fields" $ do
    (def :: TestOneof) `shouldEncodeAs` [aesonQQ| {} |]
    (def & oneofInt32Value .~ 0 :: TestOneof) `shouldEncodeAs` [aesonQQ| { oneofInt32Value: 0 } |]

  it "encodes last set value for oneof field" $
    let oneof :: TestOneof
        oneof = (def & oneofInt32Value .~ 0 & oneofStringValue .~ "test" :: TestOneof) in
      oneof `shouldEncodeAs` [aesonQQ| { oneofStringValue: "test" } |]
