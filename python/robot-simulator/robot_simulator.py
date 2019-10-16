class Direction:
	def __init__(self, xOffset, yOffset):
		self.xOffset = xOffset
		self.yOffset = yOffset

	def __eq__(self, other) :
		return type(self) == type(other) and self.xOffset == other.xOffset and self.yOffset == other.yOffset

	def __repr__(self):
		return "({}, {})".format(self.xOffset, self.yOffset)

	def __hash__(self):
		return hash((self.xOffset, self.yOffset))


EAST = Direction(1, 0)
NORTH = Direction(0, 1)
WEST = Direction(-1, 0)
SOUTH = Direction(0, -1)


class Robot:

	right_conversions = {
		NORTH: EAST,
		EAST: SOUTH,
		SOUTH: WEST,
		WEST: NORTH
	}

	left_conversions = {
		NORTH: WEST, 
		EAST: NORTH,
		SOUTH: EAST,
		WEST: SOUTH
	}

	def __init__(self, direction=NORTH, x=0, y=0):
		self.coordinates = (x, y)
		self.direction = direction
		self.functions = {
			"A": self.advance,
			"R": self.turn_right,
			"L": self.turn_left
		}

	def advance(self):
		self.coordinates = (self.coordinates[0] + self.direction.xOffset, self.coordinates[1] + self.direction.yOffset)

	def turn_right(self):
		self.direction = self.right_conversions[self.direction]

	def turn_left(self):
		self.direction = self.left_conversions[self.direction]

	def move(self, commands: str):
		for command in commands:
			self.functions[command]()
