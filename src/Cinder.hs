module Cinder
  ( module Cinder.Types,
  )
where

import Cinder.Types
import qualified Data.JSON.Schema.Generator as G

instance G.JSONSchemaGen Port

instance G.JSONSchemaGen Node

instance G.JSONSchemaGen Net
