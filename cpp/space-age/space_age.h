#if !defined(SPACE_AGE_H)
#define SPACE_AGE_H

#include <string>
#include <map>

namespace space_age {

class space_age 
{
	float age_in_seconds;
	std::map<std::string, float> orbital_period{
		{"Earth", 31557600},
		{"Mercury", 31557600 * 0.2408467},
		{"Venus", 31557600 * 0.61519726},
		{"Mars", 31557600 * 1.8808158},
		{"Jupiter", 31557600 * 11.862615},
		{"Saturn", 31557600 * 29.447498},
		{"Uranus", 31557600 * 84.016846},
		{"Neptune", 31557600 * 164.79132}
	};
	public:
		space_age(float age_in_seconds)
		{
			this->age_in_seconds = age_in_seconds;
		}

		float on_earth() const
		{
			return convert("Earth");
		}

		float on_mercury() const
		{
			return convert("Mercury");
		}

		float on_venus() const
		{
			return convert("Venus");
		}

		float on_mars() const
		{
			return convert("Mars");
		}

		float on_jupiter() const
		{
			return convert("Jupiter");
		}

		float on_saturn() const
		{
			return convert("Saturn");
		}

		float on_uranus() const
		{
			return convert("Uranus");
		}

		float on_neptune() const
		{
			return convert("Neptune");
		}

		int seconds() const
		{
			return age_in_seconds;
		}
	private:
		float convert(std::string planet) const
		{
			return age_in_seconds / orbital_period.at(planet);
		}
};

}

#endif