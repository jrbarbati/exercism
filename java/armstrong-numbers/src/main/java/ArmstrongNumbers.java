import java.util.List;
import java.util.ArrayList;

class ArmstrongNumbers 
{
	boolean isArmstrongNumber(int candidate) 
	{
		return candidate == calculateArmstrongNumber(candidate);	
	}

	private int calculateArmstrongNumber(int number)
	{
		int armstrongNumber = 0;
		List<Integer> digits = digitsOf(number);

		for (Integer digit : digits) 
			armstrongNumber += (int) Math.pow(digit, digits.size());

		return armstrongNumber;
	}

	private List<Integer> digitsOf(int number)
	{
		List<Integer> digits = new ArrayList<>();

		while (number > 0)
		{
			digits.add(number % 10);
			number /= 10;
		}

		return digits;
	}
}
