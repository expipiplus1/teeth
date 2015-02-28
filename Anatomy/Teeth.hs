module Teeth (ToothType(..), Quadrant(..), Tooth(..)) where

-- |The ToothType datatype represents a tooth's position in a quadrant
data ToothType = CentralIncisor
               | LateralIncisor
               | Canine
               | Premolar1
               | Premolar2
               | Molar1
               | Molar2
               | Molar3
  deriving (Enum, Eq, Ord, Read, Show)

-- |It's like a compass, but for your mouth
data Quadrant = LowerLeft
              | LowerRight
              | UpperLeft
              | UpperRight
  deriving (Eq, Read, Show)

-- |A Tooth has a type of tooth and the quadrant in which it is located
data Tooth = Tooth Quadrant ToothType
  deriving (Eq, Read, Show)
