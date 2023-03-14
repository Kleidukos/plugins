module Plugin where

import Data.Generics.Aliases
import Data.Generics.Schemes
import Data.Typeable

import API

resource =
  rsrc
    { field = id listify :: Typeable r => (r -> Bool) -> GenericQ [r]
    }
