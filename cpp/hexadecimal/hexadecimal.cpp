#include <map>
#include <cmath>
#include "hexadecimal.h"

namespace hexadecimal
{
    int convert(const std::string &hex)
    {
        std::map<char, int> conversion = {
                {'1', 1}, {'2', 2}, {'2', 2}, {'3', 3}, {'4', 4},
                {'5', 5}, {'6', 6}, {'7', 7}, {'8', 8}, {'9', 9},
                {'a', 10}, {'b', 11}, {'c', 12}, {'d', 13}, {'e', 14},
                {'f', 15}
        };
        int decimal = 0;
        size_t i;

        for (i = 0; i < hex.size(); i++)
        {
            if (hex[i] != '0' && !conversion[hex[i]])
                return 0;

            decimal += conversion[hex[i]] * std::pow(16, hex.size() - 1 - i);
        }

        return decimal;
    }
}  // namespace hexadecimal
