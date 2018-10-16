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
