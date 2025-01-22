//
//  Singleton.swift
//  Design_Me_For_Fun
//
//  Created by Akshay Kumar on 22/01/25.
//

import Foundation

class Singleton {
    static let shared = Singleton()
    private init() {}
    
    func logMessage(message: String) {
        print("Singleton Message: \(message)")
    }
}

class ThreadSafeSingleton {
    static let shared: ThreadSafeSingleton = {
        let instance = ThreadSafeSingleton()
        print("Memory address: \(Unmanaged.passUnretained(instance).toOpaque())")
        return instance
    }()
    
    private init() {}
}


