{-# OPTIONS -cpp #-}

#include "../../../../config.h"

import API
import System.Plugins

-- an example where we just want to load an object and run it

main = do
  let includes = [TOP ++ "/testsuite/load/null/api"]
  m_v <- load "../Null.o" includes [] "resource"
  v <- case m_v of
    LoadSuccess _ v -> return v
    _ -> error "load failed"

  putStrLn (show (a v))
