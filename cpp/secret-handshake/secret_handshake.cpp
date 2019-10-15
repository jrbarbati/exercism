#include "secret_handshake.h"

#include <algorithm>

namespace secret_handshake {

	std::vector<std::string> commands(int input)
	{
		std::vector<std::string> commands = {"wink", "double blink", "close your eyes", "jump"};
		std::vector<std::string> handshake;

		for (size_t i = 0; i < commands.size(); i++)
			if (input & (1 << i))
				handshake.push_back(commands[i]);

		if (input & (1 << 4))
			reverse(handshake.begin(), handshake.end()); 

		return handshake;
	}

}  // namespace secret_handshake
