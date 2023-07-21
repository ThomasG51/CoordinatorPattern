//
//  PlaneViewController.swift
//  CoordinatorPattern
//
//  Created by Thomas George on 21/07/2023.
//

import UIKit

class PlaneViewController: UIViewController {
    weak var coordinator: MainCoordinator?

    let plane = Plane(name: "Boeing", fuel: "Kerosene", type: "747")

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func moveToBike(_ sender: UIButton) {
        coordinator?.showBike()
    }

    @IBAction func moveToCar(_ sender: UIButton) {
        coordinator?.showCar()
    }
}
