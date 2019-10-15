#include <cmath>
#include "trinary.h"

namespace trinary
{
    int to_decimal(const std::string &trinary)
    {
        int decimal = 0;
        size_t i;

        for (i = 0; i < trinary.size(); i++)
        {
            if (std::isalpha(trinary[i]))
                return 0;

            decimal += double(trinary[i] - '0') * pow(3, trinary.size() - 1 - i);
        }

        return decimal;
    }
}  // namespace trinary
