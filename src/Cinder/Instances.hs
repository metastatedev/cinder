module Cinder.Instances where

import Cinder.Types
import qualified Data.JSON.Schema.Generator as G
import Protolude

instance G.JSONSchemaGen Port

instance G.JSONSchemaGen Kind

instance G.JSONSchemaGen Node

instance (Typeable a, G.JSONSchemaGen a) ⇒ G.JSONSchemaGen (BespokeFunction a)

instance (Typeable a, G.JSONSchemaGen a) ⇒ G.JSONSchemaGen (Net a)
