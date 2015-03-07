-- |A module containing data types for the pointy things in your mouth
module Anatomy.Teeth (Tooth(..), ToothType(..), Quadrant(..)) where

-- |A Tooth has a type of tooth and the quadrant in which it is located
data Tooth = Tooth Quadrant ToothType
  deriving (Eq, Read, Show)

-- |The ToothType datatype represents a tooth's position in a quadrant
data ToothType = CentralIncisor
               | LateralIncisor
               | Canine
               | FirstPremolar
               | SecondPremolar
               | FirstMolar
               | SecondMolar
               | ThirdMolar
  deriving (Enum, Eq, Ord, Read, Show)

-- |It's like a compass, but for your mouth
data Quadrant = LowerLeft
              | LowerRight
              | UpperLeft
              | UpperRight
  deriving (Eq, Read, Show)

