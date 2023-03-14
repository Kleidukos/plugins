import API
import System.Plugins

-- an example where we just want to load an object and run it

main = do
  m_v <- load_ "../Null.o" ["../api", ".."] "resource"
  case m_v of
    LoadFailure err -> error (unlines err)
    LoadSuccess m v -> do putStrLn (show (a v)); unload m
