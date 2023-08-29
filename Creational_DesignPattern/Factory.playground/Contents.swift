import UIKit

/// Factory design pattern

protocol Service {
    
}
// -- Concrete  types
class CarTireInstallation: Service {
    init() { print("𝌞𝌞𝌞 Car Tyre Installation 𝌞𝌞𝌞")}
}

class TruckTireInstallation: Service {
    init() { print("𝌞𝌞𝌞 Truck Tyre Installation 𝌞𝌞𝌞")}

}
// -- Factory protocol --
protocol Factory {
    func installTires() -> Service
}

// --- Factory ---
class CarFactory: Factory {
    func installTires() -> Service {
        CarTireInstallation()
    }
}

class TruckFactory: Factory {
    func installTires() -> Service {
        TruckTireInstallation()
    }
}

// ------ Client Demo ----
class TireShop {
    var service: Service?
    enum VehicleType {
        case car ,truck
    }
    func installTyre(on vehicleType: VehicleType) {
        switch vehicleType {
        case .car :
            service = CarFactory().installTires()
        case  .truck :
            service = TruckFactory().installTires()
        }
    }
}

// -- implementation --
let client = TireShop()
client.installTyre(on: .car)
client.installTyre(on: .truck)

