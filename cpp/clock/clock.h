#if !defined(CLOCK_H)
#define CLOCK_H

#include <string>

namespace date_independent
{

    class clock
    {
    private:
        int minutes;
        static const int MINUTES_PER_DAY = 1440;
    public:
        clock() : clock(0)
        {};

        explicit clock(int mins);

        static clock at(int hours, int minutes);

        clock plus(int mins);

        clock minus(int mins);

        explicit operator std::string() const;

        friend bool operator==(const clock &lhs, const clock &rhs);

        friend bool operator!=(const clock &lhs, const clock &rhs);
    };

}  // namespace date_independent

#endif // CLOCK_H