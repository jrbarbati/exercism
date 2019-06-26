#ifndef SPACE_AGE_H
#define SPACE_AGE_H

#define EARTH 31557600
#define MERCURY 31557600 * 0.2408467
#define VENUS 31557600 * 0.61519726
#define MARS 31557600 * 1.8808158
#define JUPITER 31557600 * 11.862615
#define SATURN 31557600 * 29.447498
#define URANUS 31557600 * 84.016846
#define NEPTUNE 31557600 * 164.79132

float convert_planet_age(float conversion, float seconds);

#endif
