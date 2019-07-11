class Verse:
	def __init__(self, number: str, verse: str):
		self.number = number
		self.verse = verse

days_of_christmas = {
	1: Verse('first', 'a Partridge in a Pear Tree'),
	2: Verse('second', 'two Turtle Doves'),
	3: Verse('third', 'three French Hens'),
	4: Verse('fourth', 'four Calling Birds'),
	5: Verse('fifth', 'five Gold Rings'),
	6: Verse('sixth', 'six Geese-a-Laying'),
	7: Verse('seventh', 'seven Swans-a-Swimming'),
	8: Verse('eighth', 'eight Maids-a-Milking'),
	9: Verse('ninth', 'nine Ladies Dancing'),
	10: Verse('tenth', 'ten Lords-a-Leaping'),
	11: Verse('eleventh', 'eleven Pipers Piping'),
	12: Verse('twelfth', 'twelve Drummers Drumming')
}

verse_format = 'On the {} day of Christmas my true love gave to me: {}.'


def recite(start_verse: int, end_verse: int) -> list:
	return [build_verse(verse_number) for verse_number in range(start_verse, end_verse + 1)]


def build_verse(verse_number: int) -> str:
	if verse_number == 1:
		return verse_format.format(days_of_christmas[verse_number].number, days_of_christmas[verse_number].verse)

	line = ', '.join([days_of_christmas[num].verse if num != 1 else 'and {}'.format(days_of_christmas[num].verse) for num in range(verse_number, 0, -1)])

	return verse_format.format(days_of_christmas[verse_number].number, line)
