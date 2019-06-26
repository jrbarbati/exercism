#include "reverse_string.h"
#include <algorithm>

using namespace std;

string reverse_string::reverse_string(string value)
{
	reverse(value.begin(), value.end());
	return value;
}