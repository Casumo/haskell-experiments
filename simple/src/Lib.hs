module Lib
    ( valid
    ) where

type CC = [Integer]

someFunc :: IO ()
someFunc = putStrLn "someFunc"

valid :: Integer -> Bool
valid ccNumber = True

integerToDigits :: Integer -> CC
integerToDigits x
  | x < 10 = [x]
  | otherwise = (x `mod` 10):integerToDigits(x `div` 10)

  -- todo: define an inner function so we can reverse the array of digits

--[] :: x `mod` 10
--
--integerToDigits(x `div` 10):(x `mod` 10)
--[]:1:2
--1:2:[]
--++


--Double the value of every second digit beginning from the right.
--That is, the last digit is unchanged; the second-to-last digit is doubled;
--the third-to-last digit is unchanged; and so on. For example,
--[1,3,8,6] becomes [2,3,16,6].