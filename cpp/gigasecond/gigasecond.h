#ifndef GIGASECOND_H
#define GIGASECOND_H

#include "boost/date_time/posix_time/posix_time.hpp"

#define GIGASECOND 1000000000

namespace gigasecond {

boost::posix_time::ptime advance(boost::posix_time::ptime time);

}

#endif