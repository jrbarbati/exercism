class Clock:

    MINUTES_PER_DAY = 1440

    def __init__(self, hour: int , minute: int):
        self.minutes = ((hour * 60) + minute) % self.MINUTES_PER_DAY

    def __repr__(self):
        return "{:0>2d}:{:0>2d}".format(int(self.minutes / 60) % 24, self.minutes % 60)

    def __eq__(self, other):
        return type(other) == type(self) and self.minutes == other.minutes

    def __add__(self, minutes: int):
        added = (self.minutes + minutes) % self.MINUTES_PER_DAY
        return Clock(int(added / 60) % 24, added % 60)

    def __sub__(self, minutes: int):
        return self.__add__(-minutes)
