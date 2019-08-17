#ifndef GRAINS_H
#define GRAINS_H

namespace grains {

inline unsigned long long square(int space) 
{
	return 1ULL << (space - 1);
}

inline unsigned long long total()
{
	return 0xFFFFFFFFFFFFFFFF;
}

}

#endif