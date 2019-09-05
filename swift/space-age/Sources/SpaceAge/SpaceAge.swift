struct SpaceAge {
    
    let seconds: Int
    
    init(_ seconds: Int) {
        self.seconds = seconds
    }
    
    var onMercury: Double {
        return calculateAge(forPlanet: .mercury)
    }
    
    var onVenus: Double {
        return calculateAge(forPlanet: .venus)
    }
    
    var onEarth: Double {
        return calculateAge(forPlanet: .earth)
    }
    
    var onMars: Double {
        return calculateAge(forPlanet: .mars)
    }
    
    var onJupiter: Double {
        return calculateAge(forPlanet: .jupiter)
    }
    
    var onSaturn: Double {
        return calculateAge(forPlanet: .saturn)
    }
    
    var onUranus: Double {
        return calculateAge(forPlanet: .uranus)
    }
    
    var onNeptune: Double {
        return calculateAge(forPlanet: .neptune)
    }
    
    func calculateAge(forPlanet planet: OrbitalPeriod) -> Double {
        return Double(self.seconds) / planet.rawValue
    }
    
    enum OrbitalPeriod : Double {
            case mercury = 7600543.81992
            case venus = 19414149.052176
            case earth = 31557600
            case mars = 59354032.69008
            case jupiter = 374355659.124
            case saturn = 929292362.8848
            case uranus = 2651370019.3296
            case neptune = 5200418560.032
    }
}
