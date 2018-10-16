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
