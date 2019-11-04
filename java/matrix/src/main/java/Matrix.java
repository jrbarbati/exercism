import java.util.Arrays;

class Matrix
{
    private int[][] rows;

    Matrix(String matrixAsString)
    {
        this.rows = Arrays.stream(matrixAsString.split("\\n"))
                .map(this::toIntArray)
                .toArray(int[][]::new);
    }

    private int[] toIntArray(String numbers)
    {
        return Arrays.stream(numbers.split("\\s"))
                .mapToInt(Integer::valueOf)
                .toArray();
    }

    int[] getRow(int rowNumber)
    {
        return this.rows[rowNumber - 1];
    }

    int[] getColumn(int columnNumber)
    {
        return Arrays.stream(this.rows)
                .mapToInt(row -> row[columnNumber - 1])
                .toArray();
    }
}
