class Bearing:
	def __init__(self, xOffset, yOffset):
		self.xOffset = xOffset
		self.yOffset = yOffset

	def __eq__(self, other) :
		return type(self) == type(other) and self.xOffset == other.xOffset and self.yOffset == other.yOffset

	def __repr__(self):
		return "({}, {})".format(self.xOffset, self.yOffset)

	def __hash__(self):
		return hash((self.xOffset, self.yOffset))


EAST = Bearing(1, 0)
NORTH = Bearing(0, 1)
WEST = Bearing(-1, 0)
SOUTH = Bearing(0, -1)


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

	def __init__(self, bearing=NORTH, x=0, y=0):
		self.coordinates = (x, y)
		self.bearing = bearing
		self.functions = {
			"A": self.advance,
			"R": self.turn_right,
			"L": self.turn_left
		}

	def advance(self):
		self.coordinates = (self.coordinates[0] + self.bearing.xOffset, self.coordinates[1] + self.bearing.yOffset)

	def turn_right(self):
		self.bearing = self.right_conversions[self.bearing]

	def turn_left(self):
		self.bearing = self.left_conversions[self.bearing]

	def simulate(self, commands: str):
		for command in commands:
			self.functions[command]()
