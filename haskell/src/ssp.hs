module Ssp where

data Rival = Scissors | Rock | Paper deriving (Show, Eq)

oust :: Rival -> Rival -> Rival

oust Rock Scissors = Rock
oust Rock Paper = Paper

oust Scissors Rock = Rock
oust Scissors Paper = Scissors

oust Paper Rock = Paper
oust Paper Scissors = Scissors
