module C where

import qualified A
import API

resource = let Test s = A.resource in Test{field = s}
