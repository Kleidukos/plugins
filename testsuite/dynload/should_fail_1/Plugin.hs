--
-- trying to be really mean.
--

module Plugin where

import API
import Data.Dynamic

v :: Int -> Int
v = \x -> 0xdeadbeef

resource_dyn :: Dynamic
resource_dyn = toDyn v
