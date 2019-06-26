package space

type Planet string

var ORBITAL_PERIODS = map[Planet]float64 	{
	Planet("Earth"): 31557600,
	Planet("Mercury"): 31557600 * 0.2408467,
	Planet("Venus"): 31557600 * 0.61519726,
	Planet("Mars"): 31557600 * 1.8808158,
	Planet("Jupiter"): 31557600 * 11.862615,
	Planet("Saturn"): 31557600 * 29.447498,
	Planet("Uranus"): 31557600 * 84.016846,
	Planet("Neptune"): 31557600 * 164.79132,
}

func Age(seconds float64, planet Planet) float64 {
	return seconds / ORBITAL_PERIODS[planet]
}