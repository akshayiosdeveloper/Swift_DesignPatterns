//
//  ViewController.swift
//  Design_Me_For_Fun
//
//  Created by Akshay Kumar on 22/01/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        /*
        let instance1 = Singleton.shared
        print(instance1)
        instance1.logMessage(message: "akki")
        let instance2 = Singleton.shared
        print(instance2)
        instance2.logMessage(message: "Still the same instance!")
        */
        // Usage
        DispatchQueue.concurrentPerform(iterations: 5) { _ in
            let instance = ThreadSafeSingleton.shared
            print(instance)
        }
    }


}

