#if !defined(ROBOT_SIMULATOR_H)
#define ROBOT_SIMULATOR_H

#include <utility>
#include <string>

namespace robot_simulator {

    enum Bearing {
        NORTH, SOUTH, EAST, WEST
    };

    class Robot {
    private:
        std::pair<int, int> position;
        Bearing bearing;
    public:
        Robot();
        Robot(std::pair<int, int> position, Bearing bearing);

        void turn_left();
        void turn_right();
        void advance();
        void execute_sequence(std::string commands);

        std::pair<int, int> get_position();
        Bearing get_bearing();
    };

}  // namespace robot_simulator

#endif // ROBOT_SIMULATOR_H