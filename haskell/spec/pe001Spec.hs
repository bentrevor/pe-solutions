module Pe001Spec where

import Test.Hspec

import Pe001

main :: IO ()

main = hspec $ do
  describe "multOfThree" $ do
    it "returns false for 2" $ do
      multOfThree 2 `shouldBe` False

    it "returns true for 3" $ do
      multOfThree 3 `shouldBe` True

    it "returns true for 6" $ do
      multOfThree 6 `shouldBe` True

  describe "multOfFive" $ do
    it "returns false for 2" $ do
      multOfFive 2 `shouldBe` False

    it "returns true for 5" $ do
      multOfFive 5 `shouldBe` True

    it "returns true for 10" $ do
      multOfFive 10 `shouldBe` True

  describe "multOfEither" $ do
    it "returns true for multiples of 3" $ do
      multOfEither 3 `shouldBe` True
      multOfEither 6 `shouldBe` True

    it "returns true for multiples of 5" $ do
      multOfEither 5 `shouldBe` True
      multOfEither 10 `shouldBe` True

    it "returns false for other numbers" $ do
      multOfEither 4 `shouldBe` False
      multOfEither 8 `shouldBe` False

  describe "sumOfMultiples" $ do
    it "doesn't add multiples under 3" $ do
      sumOfMultiples 2 `shouldBe` 0
      sumOfMultiples 3 `shouldBe` 0

    it "adds multiples of 3 between 1 and arg" $ do
      sumOfMultiples 4 `shouldBe` 3
      sumOfMultiples 5 `shouldBe` 3

    it "adds multiples of 5 between 1 and arg" $ do
      sumOfMultiples 6 `shouldBe` 8

    it "gets the example correct" $ do
      sumOfMultiples 10 `shouldBe` 23
