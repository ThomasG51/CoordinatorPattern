//
//  BikeViewController.swift
//  CoordinatorPattern
//
//  Created by Thomas George on 21/07/2023.
//

import UIKit

class BikeViewController: UIViewController {
    weak var coordinator: MainCoordinator?

    let bike = Bike(name: "Ducati", fuel: "Gaz", type: "Panigale")

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func moveToPlane(_ sender: UIButton) {
        coordinator?.showPlane()
    }

    @IBAction func moveToCar(_ sender: UIButton) {
        coordinator?.showCar()
    }
}
