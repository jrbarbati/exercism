#include <iostream>
#include "robot_simulator.h"

namespace robot_simulator {

    Robot::Robot()
    {
        this->position = {0, 0};
        this->bearing = Bearing::NORTH;
    }

    Robot::Robot(std::pair<int, int> position, Bearing bearing)
    {
        this->position = position;
        this->bearing = bearing;
    }

    void Robot::turn_left()
    {
        switch (this->bearing)
        {
            case Bearing::NORTH:
                this->bearing = WEST;
                break;
            case Bearing::EAST:
                this->bearing = NORTH;
                break;
            case Bearing::SOUTH:
                this->bearing = EAST;
                break;
            case Bearing::WEST:
                this->bearing = SOUTH;
        }
    }

    void Robot::turn_right()
    {
        switch (this->bearing)
        {
            case Bearing::NORTH:
                this->bearing = EAST;
                break;
            case Bearing::EAST:
                this->bearing = SOUTH;
                break;
            case Bearing::SOUTH:
                this->bearing = WEST;
                break;
            case Bearing::WEST:
                this->bearing = NORTH;
        }
    }

    void Robot::advance()
    {
        switch (this->bearing)
        {
            case Bearing::NORTH:
                this->position.second++;
                break;
            case Bearing::EAST:
                this->position.first++;
                break;
            case Bearing::SOUTH:
                this->position.second--;
                break;
            case Bearing::WEST:
                this->position.first--;
        }
    }

    void Robot::execute_sequence(std::string commands)
    {
        for (auto command : commands)
        {
            switch (command)
            {
                case 'A':
                    this->advance();
                    break;
                case 'R':
                    this->turn_right();
                    break;
                case 'L':
                    this->turn_left();
                    break;
                default:
                    break;
            }
        }
    }

    std::pair<int, int> Robot::get_position()
    {
        return this->position;
    }

    Bearing Robot::get_bearing()
    {
        return this->bearing;
    }

}  // namespace robot_simulator
