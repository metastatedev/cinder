module Main where

import Cinder
import qualified Data.ByteString.Lazy.Char8 as BL
import qualified Data.JSON.Schema.Generator as G
import Options
import Protolude
import Text.PrettyPrint.ANSI.Leijen

main ∷ IO ()
main = do
  Options cmd ← parseOptions
  case cmd of
    Version → putDoc versionDoc
    Schema → do
      BL.putStrLn (G.generate (Proxy ∷ Proxy Port))
      BL.putStrLn (G.generate (Proxy ∷ Proxy Node))
      BL.putStrLn (G.generate (Proxy ∷ Proxy (Net Kind)))
    Validate _ → putText "not yet implemented"
