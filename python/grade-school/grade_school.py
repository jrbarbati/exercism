class School:
	def __init__(self):
		self.students = []

	def add_student(self, name: str, grade: int):
		self.students.append(Student(name, grade))

	def roster(self) -> list:
		return [student.name for student in self.sort(self.students)]

	def grade(self, grade_number: int) -> list:
		return [student.name for student in self.sort(self.students) if student.grade == grade_number]

	def sort(self, students: list) -> list:
		return sorted(students, key=lambda student : (student.grade, student.name))


class Student:
	def __init__(self, name: str, grade: int):
		self.name = name
		self.grade = grade