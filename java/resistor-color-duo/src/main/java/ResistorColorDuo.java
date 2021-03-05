class ResistorColorDuo 
{
	int value(String[] colors) 
	{
		return resistorColorValue(colors[0]) * 10 + resistorColorValue(colors[1]);
	}

	int resistorColorValue(String color)
	{
		return ResistorColor.valueOf(color.toUpperCase()).getValue();
	}
}

enum ResistorColor
{
	BLACK(0),
	BROWN(1),
	RED(2),
	ORANGE(3),
	YELLOW(4),
	GREEN(5),
	BLUE(6),
	VIOLET(7),
	GREY(8),
	WHITE(9);

	private int value;

	ResistorColor(int value)
	{
		this.value = value;
	}

	public int getValue()
	{
		return this.value;
	}
}
