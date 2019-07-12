class Garden:

	conversion = {
		'V': 'Violets',
		'G': 'Grass',
		'R': 'Radishes',
		'C': 'Clover'
	}

	def __init__(self, diagram: str, students: list = ['Alice', 'Bob', 'Charlie', 'David', 'Eve', 'Fred', 'Ginny', 'Harriet', 'Ileana', 'Joseph', 'Kincaid', 'Larry']):
		self.diagram = diagram.split('\n')
		self.students = sorted(students)

	def plants(self, name: str) -> list:
		index = self.students.index(name) * 2
		firstRow = self.diagram[0]
		secondRow = self.diagram[1]
		return [
			Garden.conversion[firstRow[index]], 
			Garden.conversion[firstRow[index + 1]], 
			Garden.conversion[secondRow[index]], 
			Garden.conversion[secondRow[index + 1]]
		]
