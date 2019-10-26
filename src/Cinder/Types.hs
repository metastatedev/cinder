module Cinder.Types where

import Protolude

type Address = Integer

type Slot = Integer

data Port
  = Port
      { portAddress ∷ Address,
        portSlot ∷ Slot
      }
  deriving (Show, Eq, Generic, Typeable)

data Node
  = Node
      { nodeAddress ∷ Address,
        nodePorts ∷ [Port]
      }
  deriving (Show, Eq, Generic, Typeable)

data Net
  = Net
      { netNodes ∷ [Node]
      }
  deriving (Show, Eq, Generic, Typeable)
