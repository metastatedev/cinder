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

data Kind
  = Eraser
  | Constructor
  | Duplicator
  deriving (Show, Eq, Generic, Typeable)

data Node
  = Node
      { nodeAddress ∷ Address,
        nodeKind ∷ Kind,
        nodePorts ∷ [Port]
      }
  deriving (Show, Eq, Generic, Typeable)

data BespokeFunction opType
  = BespokeFunction
      { functionNumber ∷ Integer,
        functionOp ∷ opType
      }
  deriving (Show, Eq, Generic, Typeable)

data Net opType
  = Net
      { netNodes ∷ [Node],
        netBespokeFunctions ∷ [BespokeFunction opType]
      }
  deriving (Show, Eq, Generic, Typeable)
