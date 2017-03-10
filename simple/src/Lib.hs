module Lib
    ( valid,
      integerToDigits,
      doubleSeconds
    ) where

type CC = [Integer]

someFunc :: IO ()
someFunc = putStrLn "someFunc"

valid :: Integer -> Bool
valid ccNumber =
  (length (integerToDigits ccNumber)) == 16

integerToDigits :: Integer -> CC
integerToDigits x
  | x < 10 = [x]
  | otherwise = integerToDigits(x `div` 10) ++ [(x `mod` 10)]

doubleSeconds :: CC -> CC
doubleSeconds x
  -- | reverse x
    -- "pseudocode" | (last:second:tail) = (doubleSeconds (reverse tail)) ++ [second * 2, last]
  | otherwise = x

-- Double the value of every second digit beginning from the right.
-- That is, the last digit is unchanged; the second-to-last digit is doubled;
-- the third-to-last digit is unchanged; and so on. For example,
-- [1,3,8,6] becomes [2,3,16,6].
