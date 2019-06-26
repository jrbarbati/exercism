#include "raindrops.h"

using namespace std;

string raindrops::convert(int rain)
{
	string speak = "";

	speak += rain % 3 == 0 ? "Pling" : "";
	speak += rain % 5 == 0 ? "Plang" : "";
	speak += rain % 7 == 0 ? "Plong" : "";

	return speak.size() > 0 ? speak : to_string(rain);
}
