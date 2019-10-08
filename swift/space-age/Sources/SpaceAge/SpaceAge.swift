struct SpaceAge {
    
    let seconds: Int
    
    init(_ seconds: Int) {
        self.seconds = seconds
    }
    
    var onMercury: Double {
        return OrbitalPeriod.mercury.toYears(seconds: seconds)
    }
    
    var onVenus: Double {
        return OrbitalPeriod.venus.toYears(seconds: seconds)
    }
    
    var onEarth: Double {
        return OrbitalPeriod.earth.toYears(seconds: seconds)
    }
    
    var onMars: Double {
        return OrbitalPeriod.mars.toYears(seconds: seconds)
    }
    
    var onJupiter: Double {
        return OrbitalPeriod.jupiter.toYears(seconds: seconds)
    }
    
    var onSaturn: Double {
        return OrbitalPeriod.saturn.toYears(seconds: seconds)
    }
    
    var onUranus: Double {
        return OrbitalPeriod.uranus.toYears(seconds: seconds)
    }
    
    var onNeptune: Double {
        return OrbitalPeriod.neptune.toYears(seconds: seconds)
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
        
        func toYears(seconds: Int) -> Double {
            return Double(seconds) / self.rawValue
        }
    }
}
