module Data.ProtoLens.JSON
  ( ProtoJSON(..)
  , decodeMessageJSON
  , encodeMessageJSON
  ) where

import Data.ProtoLens.JSON.Decode (ProtoJSON(..), decodeMessageJSON)
import Data.ProtoLens.JSON.Encode (encodeMessageJSON)
