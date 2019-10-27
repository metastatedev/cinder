module Main where

import Cinder
import qualified Cinder.Nets.FMNet as FMNet
import qualified Data.Aeson as A
import qualified Data.ByteString.Lazy.Char8 as BL
import Options
import Protolude
import Text.PrettyPrint.ANSI.Leijen

main ∷ IO ()
main = do
  Options cmd ← parseOptions
  case cmd of
    Version → putDoc versionDoc
    Schema → do
      BL.putStrLn $ A.encode $
        [ generate (Proxy ∷ Proxy Port),
          generate (Proxy ∷ Proxy FMNet.Kind),
          generate (Proxy ∷ Proxy FMNet.Node),
          generate (Proxy ∷ Proxy FMNet.BespokeFunction),
          generate (Proxy ∷ Proxy FMNet.Data),
          generate (Proxy ∷ Proxy FMNet.Op),
          generate (Proxy ∷ Proxy FMNet.Net)
        ]
    Validate _ → putText "not yet implemented"
