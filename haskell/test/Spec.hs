import Test.Tasty.Hspec
import Test.Tasty.QuickCheck
import Control.Exception (evaluate)
import Ssp

main :: IO ()
main = hspec $ do
  describe "Ssp tests" $ do
    it "returns the first element of a list" $ do
          head [23 ..] `shouldBe` (23 :: Int)

    it "Rock ousts Scissors" $ do
        oust Rock Scissors `shouldBe` Rock

    it "Rock was ousted by Paper" $ do
      oust Rock Paper `shouldBe` Paper
 
    it "Scissors ousts Paper" $ do
      oust Scissors Paper `shouldBe` Scissors
 
    it "Scissors was ousted by Rock" $ do
      oust Scissors Rock `shouldBe` Rock
 
    it "Paper ousts Rock" $ do
      oust Paper Rock `shouldBe` Paper
 
    it "Paper was ousted by Scissors" $ do
      oust Paper Scissors `shouldBe` Scissors

