#include "gigasecond.h"

using namespace boost::posix_time;
using namespace boost::gregorian;

ptime gigasecond::advance(ptime time)
{
	return time + seconds(GIGASECOND);
}