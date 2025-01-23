//
//  FactoryDesignPattern.swift
//  Design_Me_For_Fun
//
//  Created by Akshay Kumar on 23/01/25.
//

import Foundation
// Define the protocol
protocol Vehicle {
    var engine: String { get }
    var numberofWheels: Int { get }
}

// // Step 2: Implement concrete classes
class Car: Vehicle {
    var engine: String = "1.2 Litre petrol"
    var numberofWheels: Int = 4
    func carConfiguration() {
        print("engine type:\(engine)")
        print("no of  wheels:\(numberofWheels)")
    }
}
class Bike: Vehicle {
    var engine: String = "2 Stroke"
    var numberofWheels: Int = 2
    func bikeConfiguration() {
        print("engine type:\(engine)")
        print("no of  wheels:\(numberofWheels)")
    }
}

class Truck : Vehicle {
    var engine: String = "8 Stroke"
    var numberofWheels: Int = 4
    func bikeConfiguration() {
        print("engine type:\(engine)")
        print("no of  wheels:\(numberofWheels)")
    }
}

// Step 3: Create the Factory

class VehcileFactory {
    enum VehicleType {
        case car
        case bike
        case truck
    }
    
    func createVehicle(_ type: VehicleType) -> Vehicle {
        switch type {
        case .car:
            return Car()
        case .bike:
            return Bike()
        case .truck:
            return Truck()
        }
    }
}



