//
//  MainCoordinator.swift
//  CoordinatorPattern
//
//  Created by Thomas George on 21/07/2023.
//

import Foundation
import UIKit

protocol Coordinator {
    var children: [Coordinator] { get }
    var navigationController: UINavigationController { get }

    func start()
}

class MainCoordinator: Coordinator {
    var children = [Coordinator]()
    var navigationController = UINavigationController()

    func start() {
        let vc = CarViewController.instantiate(from: .car)
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }

    func showCar() {
        let vc = CarViewController.instantiate(from: .car)
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }

    func showPlane() {
        let vc = PlaneViewController.instantiate(from: .plane)
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }

    func showBike() {
        let vc = BikeViewController.instantiate(from: .bike)
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
}
