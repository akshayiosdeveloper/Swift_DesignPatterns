import UIKit

/// Definition  of DIP
/// The Dependency Inversion Principle (DIP) states that high-level modules should not depend on low-level modules, but both should depend on abstractions. In other words, it’s better to have a flexible, abstract interface that can be implemented in multiple ways rather than a rigid, concrete implementation.

protocol Engine {
    func start()
    
}
class Car {
    let engine: Engine
    init(engine: Engine) {
        self.engine = engine
    }
    
    func drive() {
        engine.start()
    }
}
class ElectricCar : Engine {
    func start() {
        print("electric car")
    }
}

class DieselCar : Engine {
    func start() {
        print("diesel car")
    }
}

class CNGCar : Engine {
    func start() {
        print("CNG car")
    }
}

let electricCar = Car(engine: ElectricCar())
electricCar.drive()

let cngCar = Car(engine: CNGCar())
cngCar.drive()

let dieselCar = Car(engine: DieselCar())
dieselCar.drive()
