module Pe002Spec where

import Test.Hspec

import Pe002

main :: IO ()

main = hspec $ do
  describe "Fibonacci sequence" $ do
    it "starts with two 1's" $ do
      fibs!!1 `shouldBe` 1
      fibs!!2 `shouldBe` 1

    it "follows the first ten terms given" $ do
      fibs!!3 `shouldBe` 2
      fibs!!4 `shouldBe` 3
      fibs!!5 `shouldBe` 5
      fibs!!6 `shouldBe` 8
      fibs!!7 `shouldBe` 13
      fibs!!8 `shouldBe` 21
      fibs!!9 `shouldBe` 34

  describe "evenFibs" $ do
    it "doesn't include odd numbers" $ do
      evenFibs!!1 `shouldBe` 2
      evenFibs!!2 `shouldBe` 8
      evenFibs!!3 `shouldBe` 34

  describe "evensUpTo" $ do
    it "doesn't go past the limit" $ do
      last (evensUpTo 10) `shouldBe` 8
      last (evensUpTo 40) `shouldBe` 34

