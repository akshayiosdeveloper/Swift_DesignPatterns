import UIKit

/// Factory design pattern
/// Factory method is a creational design pattern which solves the problem of creating product objects without specifying their concrete classes. The Factory Method defines a method, which should be used for creating objects instead of using a direct constructor call ( new operator)

protocol Service {
    
}
// -- Concrete  types
class CarTireInstallation: Service {
    init() { print("𝌞𝌞𝌞  Car Tyre Installation 𝌞𝌞𝌞 ")}
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

// ------ Client defination ----
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

// -- cleint implementation --
let client = TireShop()
client.installTyre(on: .car)
client.installTyre(on: .truck)


/// Realistic example


protocol RandomValue {
    var value: AnyHashable { get }
}

/// Contrete class

class StringRandomValue: RandomValue  {
    var value: AnyHashable {
        UUID().uuidString
    }
}

class DoubleRadom: RandomValue  {
    var value: AnyHashable {
        Double.random(in: 100.0 ..< 500.0)
    }
}

class IntRandom: RandomValue {
    var value: AnyHashable {
        Int.random(in: 0 ..< 50)
    }
}
// Factory protocol

protocol RandomFactory  {
    func generateRandomValue() -> RandomValue
}

class StringRandomFactory : RandomFactory {
    func generateRandomValue() -> RandomValue {
        return StringRandomValue()
    }
}

class DoubleRandomFactory: RandomFactory {
    func generateRandomValue() -> RandomValue {
        return DoubleRadom()
    }
}

class IntRandomFactory: RandomFactory {
    func generateRandomValue() -> RandomValue {
        return IntRandom()
    }
}

// client definition

class Cleint {
    enum RandomType {
        case string , int , double
    }
    
    func generateRandomValue( value: RandomType) {
        var service: RandomFactory
        switch value {
        case .string :
            service = StringRandomFactory()
        case .int :
            service = IntRandomFactory()
        case .double :
            service = DoubleRandomFactory()
        }
        let result = service.generateRandomValue().value
        print("⊨⊨⊨RandomValue𝌞𝌞𝌞\(result)")
    }
    
}

// client implementation
let clientDemo = Cleint()
clientDemo.generateRandomValue(value: .double)
clientDemo.generateRandomValue(value: .int)
clientDemo.generateRandomValue(value: .string)

