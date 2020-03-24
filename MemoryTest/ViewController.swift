//
//  ViewController.swift
//  MemoryTest
//
//  Created by Manager on 24/03/2020.
//  Copyright © 2020 Inna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let person = "Alexey"
        let age = 39
        
        label.text = "Name: \(person), age: \(age)"
        
        var first: MyClass? = MyClass()
        var second = first
        var third = first
        
        first = nil
        second = nil
        third = nil
        
        var parent: Parent?
        parent = Parent()
        parent = nil
    }
}

class MyClass {
    var someNumber = 16
    
    deinit {
        print("class MyClass has been deolocated")
    }
}
//удаление объектов из памяти

class Parent {
    var child = Child()
    deinit {
        print("class Parent has been deolocated")
    }
}
class Child {
    deinit {
        print("class Child has been deolocated")
    }
}
