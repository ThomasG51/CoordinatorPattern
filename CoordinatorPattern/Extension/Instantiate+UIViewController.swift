//
//  Instantiate+UIViewController.swift
//  CoordinatorPattern
//
//  Created by Thomas George on 21/07/2023.
//

import Foundation
import UIKit

enum StoryBoardName: String {
    case car = "CarView"
    case plane = "PlaneView"
    case bike = "BikeView"
}

extension UIViewController {
    static func instantiate(from storyboard: StoryBoardName) -> Self {
        let storyboard = UIStoryboard(name: storyboard.rawValue, bundle: Bundle.main)
        let vc = storyboard.instantiateViewController(withIdentifier: String(describing: Self.self)) as! Self
        return vc
    }
}
