--main :: IO ()
--main = putStrLn "Test suite not yet implemented"

import Test.Hspec
import Test.QuickCheck
import Control.Exception (evaluate)
import Lib (valid, integerToDigits)

main :: IO ()
main = hspec $ do
  describe "About credit card numbers"  $ do
    it "A credit card number should be 16 digits" $ do
      valid 4716781503543680 `shouldBe` True

    it "Number with less than 16 digits should fail" $ do
      valid 1234 `shouldBe` False

  describe "Internals" $ do
    it "Should convert digits to list of integers" $ do
      integerToDigits 1234 `shouldBe` [1, 2, 3, 4]



--Double the value of every second digit beginning from the right.
--That is, the last digit is unchanged; the second-to-last digit is doubled;
--the third-to-last digit is unchanged; and so on. For example,
--[1,3,8,6] becomes [2,3,16,6].
