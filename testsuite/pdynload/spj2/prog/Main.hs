import API
import System.Plugins

src = "../Plugin.hs"
wrap = "../Wrapper.hs"
apipath = "../api"

main = do
  status <- make src ["-i" ++ apipath]
  case status of
    MakeSuccess _ _ -> f
    MakeFailure e -> mapM_ putStrLn e
  where
    f = do
      v <- pdynload "../Plugin.o" ["../api"] [] "API.Interface" "resource"
      case v of
        LoadSuccess _ (a :: Interface) -> putStrLn $ show a -- will crash
        LoadFailure es -> putStrLn $ show es
