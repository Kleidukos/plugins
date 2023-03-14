module Null (resource) where

import API
import Data.Dynamic
import Graphics.Rendering.OpenGL
import Prelude hiding (null)

resource = null

-- ! this has to be special: it can't be overridden by the user.
resource_dyn :: Dynamic
resource_dyn = toDyn resource
