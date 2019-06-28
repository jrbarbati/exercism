class SpaceAge 
{
    private double seconds;

    SpaceAge(double seconds) 
    {
        this.seconds = seconds;
    }

    double onEarth() 
    {
        return convertAgeTo(Planet.EARTH);
    }

    double onMercury() 
    {
        return convertAgeTo(Planet.MERCURY);
    }

    double onVenus() 
    {
        return convertAgeTo(Planet.VENUS);
    }

    double onMars() 
    {
        return convertAgeTo(Planet.MARS);
    }

    double onJupiter() 
    {
        return convertAgeTo(Planet.JUPITER);
    }

    double onSaturn() 
    {
        return convertAgeTo(Planet.SATURN);
    }

    double onUranus() 
    {
        return convertAgeTo(Planet.URANUS);
    }

    double onNeptune() 
    {
        return convertAgeTo(Planet.NEPTUNE);
    }

    private double convertAgeTo(Planet planet)
    {
        return this.seconds / (planet.yearInEarthYears() * Planet.EARTH_YEAR_SECS);
    }

    double getSeconds()
    {
        return seconds;
    }
}

enum Planet 
{
    EARTH(1d),
    MERCURY(0.2408467),
    VENUS(0.61519726),
    MARS(1.8808158),
    JUPITER(11.862615),
    SATURN(29.447498),
    URANUS(84.016846),
    NEPTUNE(164.79132);

    private double yearInEarthYears;

    Planet(double yearInEarthYears)
    {
        this.yearInEarthYears = yearInEarthYears;
    }

    public double yearInEarthYears()
    {
        return this.yearInEarthYears;
    }

    static final double EARTH_YEAR_SECS = 31557600d;
}
