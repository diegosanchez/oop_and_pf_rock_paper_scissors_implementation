module Ssp where

data Rival = Sisors | Stone | Paper deriving (Show, Eq)

oust :: Rival -> Rival -> Rival
oust Stone Sisors = Stone
oust Stone Paper = Paper

oust Sisors Stone = Stone
oust Sisors Paper = Sisors

oust Paper Stone = Paper
oust Paper Sisors = Sisors
