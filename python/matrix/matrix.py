class Matrix(object):
    def __init__(self, matrix_string: str):
        self.rows = [[int(x) for x in row.split(' ')] for row in matrix_string.split('\n')]
        self.columns = list(map(list, zip(*self.rows)))

    def row(self, index: int) -> list:
        return self.rows[index - 1]

    def column(self, index: int) -> list:
       	return self.columns[index - 1]
