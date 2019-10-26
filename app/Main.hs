module Main where

import Cinder
import qualified Data.ByteString.Lazy.Char8 as BL
import qualified Data.JSON.Schema.Generator as G
import Protolude

main ∷ IO ()
main = do
  BL.putStrLn (G.generate (Proxy ∷ Proxy Port))
  BL.putStrLn (G.generate (Proxy ∷ Proxy Node))
  BL.putStrLn (G.generate (Proxy ∷ Proxy Net))
