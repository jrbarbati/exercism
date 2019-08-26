#include "binary.h"
#include <iostream>

namespace binary {
	int two_to_the(int power);

	int convert(std::string binary)
	{
		int i, decimal = 0;
		
		for (i = binary.size() - 1; i >= 0; i--)
		{
			if (binary[i] != '1' && binary[i] != '0')
				return 0;

			if (binary[i] == '1')
				decimal += two_to_the(binary.size() - i - 1);
		}

		return decimal;
	}

	int two_to_the(int power)
	{
		return 1 << power;
	}
}
