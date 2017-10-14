{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE PolyKinds #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE UndecidableInstances #-}
module Exercises where

import Generics.SOP
import Generics.SOP.NP
import Generics.SOP.GGP
import qualified Generics.SOP.Type.Metadata as T
import qualified GHC.Generics as GHC
import GHC.TypeLits

-- 1.
--
-- Define datatypes with the following codes
--
-- '[ '[ Int, Char, Bool ] ]
--
-- '[ '[ Int ], '[ Int, a, Int ] ]
--
-- and instantiate them to Generics and HasDatatypeInfo.


-- 2.
--
-- Define functions

productFrom :: (IsProductType a xs) => a -> NP I xs
productFrom = undefined

productTo   :: (IsProductType a xs) => NP I xs -> a
productTo = undefined

-- as mutual inverses in terms of from and to
-- such that productFrom extracts the product from the
-- single constructor and productTo embeds it.

-- 3.
--
-- Define a generic implementation of mempty for product
-- types:

emptyProduct :: (IsProductType a xs, All Monoid xs) => a
emptyProduct = undefined

-- 4.
--
-- Define a generic implementation of mappend for product
-- types:

appendProduct :: (IsProductType a xs, All Monoid xs) => a -> a -> a
appendProduct = undefined

-- 5.
--
-- Write a generic function that produces a product that
-- is 0 everywhere as long as all components are numeric.

-- 6.
--
-- Write a generic function that increments all components
-- by one as long as all components are numeric.

-- 7.
--
-- Write a generic function that sums all numbers of a product
-- as long as all components are of type Int.

-- 8.
--
-- Write a generic function that checks whether two products
-- are equal.

-- 9.
--
-- Write a generic function that counts how many fields of two
-- products are equal.

-- 10.
--
-- Write a generic function that performs a three-way merge
-- on three products.
--
-- merge :: (IsProductType a xs, All Eq xs) => a -> a -> a -> Maybe a
--
-- In every components, merge x y z should be the value of y if
-- the values of x and z coincide, and the value of z if the values
-- of x and y coincide, and the shared value of y and z if they
-- coincide. If all three values are different in any component, then
-- Nothing should be returned.

-- 11.
--
-- Write a generic function that constructs a product by
-- prompting the user for input for each field and parsing
-- that via read.
--
-- The function may crash if the input is invalid.

-- 12.
--
-- Write a variant of the generic function in 11 that uses
-- readMaybe and returns Nothing if any input is invalid.

-- 13.
--
-- Define a generic function that computes all constructor names
-- of a given type.

-- 14.
--
-- Define a generic function that computes all field names of
-- a product type that has record fields.

-- 15.
--
-- Use the field names from 14 to improve the function in
-- 11/12 to prompt for the field name when asking for input.

-- 16.
--
-- Define functions
--
-- enumFrom :: (IsEnumType a) => a -> NS (NP I) (Code a)
-- enumTo   :: (IsEnumType a) => NS (NP I) (Code a) -> a
--
-- that convert between an enum type and its sum structure.

-- 17.
--
-- Compute all values of an enumeration type generically.

-- 18.
--
-- Try to define a function
--
-- parseCon :: (IsEnumType a) => String -> Maybe a
--
-- that turns a constructor name into the corresponding
-- value if the constructor name is valid.
--
-- (This is a very limited form of read.)

-- 19.
--
-- Try to compute all values of an arbitrary type generically.
-- (You can first try a naive approach to enumeration that
-- does not cover all values when the type is infinite.)

-- 20.
--
-- Choose a function / library you'd like to implement
-- generically and try to come up with a solution using
-- generics-sop.
