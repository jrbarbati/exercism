import java.util.Arrays;
import java.util.stream.IntStream;

class Matrix
{
    private int[][] rows;
    private int[][] columns;

    Matrix(String matrixAsString)
    {
        this.rows = Arrays.stream(matrixAsString.split("\\n"))
                .map(this::toIntArray)
                .toArray(int[][]::new);

        this.columns = IntStream.range(0, this.rows[0].length)
                .mapToObj(this::createColumn)
                .toArray(int[][]::new);
    }

    private int[] toIntArray(String numbers)
    {
        return Arrays.stream(numbers.split("\\s"))
                .mapToInt(Integer::valueOf)
                .toArray();
    }

    private int[] createColumn(int columnNumber)
    {
        return Arrays.stream(this.rows)
                .mapToInt(row -> row[columnNumber])
                .toArray();
    }

    int[] getRow(int rowNumber)
    {
        return this.rows[rowNumber - 1];
    }

    int[] getColumn(int columnNumber)
    {
        return this.columns[columnNumber - 1];
    }
}
