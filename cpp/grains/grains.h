#ifndef GRAINS_H
#define GRAINS_H

namespace grains {

inline unsigned long long square(int space) 
{
	return 1ULL << (space - 1);
}

inline unsigned long long total()
{
	unsigned long long total  = 0;

	for(int i = 1; i <= 64; i++)
		total = total | square(i);

	return total;
}

}

#endif