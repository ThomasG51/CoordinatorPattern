//
//  CarViewController.swift
//  CoordinatorPattern
//
//  Created by Thomas George on 21/07/2023.
//

import UIKit

class CarViewController: UIViewController {
    weak var coordinator: MainCoordinator?
    
    let car = Car(name: "Porsche", fuel: "Gaz", type: "Sport")

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func moveToPlane(_ sender: UIButton) {
        coordinator?.showPlane()
    }

    @IBAction func moveToBike(_ sender: UIButton) {
        coordinator?.showBike()
    }
}
