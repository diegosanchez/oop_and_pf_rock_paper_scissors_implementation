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
