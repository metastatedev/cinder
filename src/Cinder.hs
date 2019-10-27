module Cinder
  ( module Cinder.Types,
    generate,
  )
where

import Cinder.Instances ()
import Cinder.Types
import qualified Data.Aeson as A
import Data.Char
import Data.JSON.Schema.Generator hiding (generate)
import Protolude

generate ∷ JSONSchemaGen a ⇒ Proxy a → A.Value
generate = convert options . toSchema defaultOptions

options ∷ A.Options
options =
  A.defaultOptions
    { A.fieldLabelModifier = (\(h : t) → toLower h : t) . dropWhile isLower,
      A.omitNothingFields = True,
      A.sumEncoding = A.ObjectWithSingleField
    }
