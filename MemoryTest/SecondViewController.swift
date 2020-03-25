//
//  SecondViewController.swift
//  MemoryTest
//
//  Created by Инна Лаптева on 25.03.2020.
//  Copyright © 2020 Inna. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
     
    // к ленивым свойствам мы обращаемся после полной инициализации класса
//    private lazy  var clouser: () -> Void = { [unowned secondVC = self] in
//        secondVC.view.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
//    }
    
//    private lazy  var clouser: () -> Void = { [unowned self] in
//        self.view.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
//    }
    //работа с листом захвата (только для свойств)
    private lazy  var clouser: (() -> Void)? = { [weak self] in
        guard let self = self else { return }
        self.view.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
       // clouser?()
        doSomething {
            self.view.backgroundColor = .darkGray
        }
    }
    
    @IBAction func closeVCPressed() {
        dismiss(animated: true)
    }
    
    private func doSomething(completion: ()-> Void) {
        completion()
    }
    
       deinit {
           print("class SecondViewController has been deolocated")
       }

}
