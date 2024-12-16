module Data.ProtoLens.JSON.Util (camelize, keyValueFieldDescriptors) where

import Data.Char (toUpper)

import qualified Data.Map as Map
import qualified Data.ProtoLens as P

camelize :: String -> String
camelize ('_':c:cs) = toUpper c:camelize cs
camelize (c:cs) = c:camelize cs
camelize [] = []

keyValueFieldDescriptors
  :: P.Message entry
  => (P.FieldDescriptor entry, P.FieldDescriptor entry)
keyValueFieldDescriptors =
  (lookupDescOrDie entryKeyTag, lookupDescOrDie entryValueTag)

lookupDescOrDie :: P.Message entry => P.Tag -> P.FieldDescriptor entry
lookupDescOrDie t =
  maybe (error $ "[BUG] missing field in map entry: " ++ show t) id $
    Map.lookup t P.fieldsByTag

entryKeyTag, entryValueTag :: P.Tag
entryKeyTag = 1
entryValueTag = 2
