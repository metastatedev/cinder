module Cinder.Instances where

import Cinder.Types
import Data.JSON.Schema.Generator
import Protolude

instance JSONSchemaGen Port

instance (Typeable dataTy, JSONSchemaGen dataTy) ⇒ JSONSchemaGen (Kind dataTy)

instance (Typeable dataTy, JSONSchemaGen dataTy) ⇒ JSONSchemaGen (Node dataTy)

instance (Typeable opTy, JSONSchemaGen opTy) ⇒ JSONSchemaGen (BespokeFunction opTy)

instance (Typeable dataTy, JSONSchemaGen dataTy, Typeable opTy, JSONSchemaGen opTy) ⇒ JSONSchemaGen (Net dataTy opTy)
