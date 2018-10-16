## Results

Solving R-P-S using OOP take much more code than using FP.
Declarativeness helps us to solve some problems easily through pattern matching.
Which one do you prefer?
We should change our minds, shouldn't we?

### Haskell 

```haskel
module Ssp where

data Rival = Scissors | Rock | Paper deriving (Show, Eq)

oust :: Rival -> Rival -> Rival

oust Rock Scissors = Rock
oust Rock Paper = Paper

oust Scissors Rock = Rock
oust Scissors Paper = Scissors

oust Paper Rock = Paper
oust Paper Scissors = Scissors
```

### Java

```Paper.java```

```java
public class Paper {
    @Override
    public boolean equals(Object another) {
        return this.getClass().equals(
            another.getClass());
    }

    public Paper oust(Stone stone) {
        return this;
    }

    public Scissors oust(Scissors scissors) {
        return scissors;
    }
}
```

```Scissors```

```java
public class Scissors {
    @Override
    public boolean equals(Object another) {
        return this.getClass().equals(
            another.getClass());
    }

    public Scissors oust(Paper paper) {
        return this;
    }

    public Stone oust(Stone stone) {
        return stone;
    }
}
```

```Rock```

```java
public class Stone {
    public Stone oust(Scissors scissors) {
        return this;
    }

    @Override
    public boolean equals(Object another) {
        return this.getClass().equals(
            another.getClass());
    }

    public Paper oust(Paper paper) {
        return paper;
    }
}
```
