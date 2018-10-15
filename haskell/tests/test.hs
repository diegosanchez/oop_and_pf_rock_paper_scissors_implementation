import Test.Tasty
import Test.Tasty.HUnit
import Ssp

import Data.List
import Data.Ord

main = defaultMain tests

tests :: TestTree
tests = testGroup "Tests" [unitTests, sspTests]

unitTests = testGroup "Unit tests"
  [ testCase "List comparison (different length)" $
      [1, 2, 3] `compare` [1,2] @?= GT

  -- the following test does not hold
  , testCase "List comparison (same length)" $
      [1, 2, 3] `compare` [1,2,3] @?= EQ
  ]

sspTests = testGroup "SSP tests"
  [ testCase "Stone ousts Sisors" $
      oust Stone Sisors @?= Stone

    , testCase "Stone was ousted by Paper" $
      oust Stone Paper @?= Paper
 
    , testCase "Sisors ousts Paper" $
      oust Sisors Paper @?= Sisors
 
    , testCase "Sisors was ousted by Stone" $
      oust Sisors Stone @?= Stone
 
    , testCase "Paper ousts Stone" $
      oust Paper Stone @?= Paper
 
    , testCase "Paper was ousted by Sisors" $
      oust Paper Sisors @?= Sisors
 
  ]
