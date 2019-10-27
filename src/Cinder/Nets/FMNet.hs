module Cinder.Nets.FMNet where

import qualified Cinder.Types as C
import Data.JSON.Schema.Generator
import Protolude

data Data
  = Int Integer
  deriving (Show, Eq, Generic, Typeable)

data Op
  = Add
  | Sub
  | Mul
  | Div
  | Mod
  | Pow
  | BitwiseAnd
  | BitwiseOr
  | BitwiseXor
  | Not
  deriving (Show, Eq, Generic, Typeable)

instance JSONSchemaGen Data

instance JSONSchemaGen Op

type Kind = C.Kind Data

type Node = C.Node Data

type BespokeFunction = C.BespokeFunction Op

type Net = C.Net Data Op
