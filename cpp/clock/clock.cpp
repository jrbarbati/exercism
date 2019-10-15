#include "clock.h"

namespace date_independent
{

    clock::clock(int mins)
    {
        mins %= clock::MINUTES_PER_DAY;
        mins += clock::MINUTES_PER_DAY;
        mins %= clock::MINUTES_PER_DAY;

        this->minutes = mins;
    }

    clock clock::at(int hours, int mins)
    {
        return clock((hours * 60) + mins);
    }

    clock clock::plus(int mins)
    {
        return this->at(0, this->minutes + mins);
    }

    clock clock::minus(int mins)
    {
        return this->plus(-mins);
    }

    bool operator==(const clock &lhs, const clock &rhs)
    {
        return lhs.minutes == rhs.minutes;
    }

    bool operator!=(const clock &lhs, const clock &rhs)
    {
        return !(lhs == rhs);
    }

    clock::operator std::string() const
    {
        char buffer[6];
        sprintf(buffer, "%02d:%02d", this->minutes / 60, this->minutes % 60);

        return buffer;
    }

}  // namespace date_independent
