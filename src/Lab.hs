--------------------------------------------------------------------------------
-- Functional Programming (CS141)                                             --
-- Lab: Higher-order functions                                                --
--------------------------------------------------------------------------------

module Lab where

--------------------------------------------------------------------------------

-- Some of the functions we will be defining as part of this lab are
-- part of Haskell's standard library. The following line tells the compiler
-- not to import them.
import Prelude hiding ( elem, maximum, intersperse, transpose
                      , subsequences, permutations, any, all, flip, takeWhile
                      , zipWith, groupBy, notElem )

--------------------------------------------------------------------------------
-- Recursive and higher-order functions

elem :: Eq a => a -> [a] -> Bool
elem p [] = False
elem p x = any (== p) x

--elem' p = foldr (\x -> x == p) False

maximum :: Ord a => [a] -> a
maximum = foldr1 f
  where f y z = if y>z then y else z

any :: (a -> Bool) -> [a] -> Bool
any p [] = False
any p (x:y) = p x || any p y

all :: (a -> Bool) -> [a] -> Bool
all p [] = True
all p (x:y) = p x && all p y

flip :: (a -> b -> c) -> b -> a -> c
flip f x y = f y x

takeWhile :: (a -> Bool) -> [a] -> [a]
takeWhile f (x:xs) = if not (f x) then [] else x : takeWhile f xs

zipWith :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith = undefined

groupBy :: (a -> a -> Bool) -> [a] -> [[a]]
groupBy = undefined

permutations :: Eq a => [a] -> [[a]]
permutations = undefined

--------------------------------------------------------------------------------
