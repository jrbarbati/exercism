// Package space calculates the age of each planet relative it's own orbital period.
package space

type Planet string

const earthOrbialPeriod = 31557600

var ORBITAL_PERIODS = map[Planet]float64 	{
	Planet("Earth"): earthOrbialPeriod,
	Planet("Mercury"): earthOrbialPeriod * 0.2408467,
	Planet("Venus"): earthOrbialPeriod * 0.61519726,
	Planet("Mars"): earthOrbialPeriod * 1.8808158,
	Planet("Jupiter"): earthOrbialPeriod * 11.862615,
	Planet("Saturn"): earthOrbialPeriod * 29.447498,
	Planet("Uranus"): earthOrbialPeriod * 84.016846,
	Planet("Neptune"): earthOrbialPeriod * 164.79132,
}

// Age calculates the age of a certain amount of seconds for a given planet.
func Age(seconds float64, planet Planet) float64 {
	return seconds / ORBITAL_PERIODS[planet]
}