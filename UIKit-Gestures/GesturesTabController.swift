//
//  GesturesTabController.swift
//  UIKit-Gestures
//
//  Created by Alex Paul on 2/3/20.
//  Copyright © 2020 Alex Paul. All rights reserved.
//

import UIKit

class GesturesTabController: UITabBarController {
  
  private lazy var tapGestureVC: TapGestureController = {
    // we need the storyboard instance
    let storyboard = UIStoryboard(name: "TapGesture", bundle: nil)
    // we need to get an instance from storyboard
    guard let viewController = storyboard.instantiateViewController(identifier: "TapGestureController") as? TapGestureController else {
      fatalError("could not downcast to TapGestureController")
    }
    return viewController
  }()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    viewControllers = [tapGestureVC, SwipeGestureController()]
  }
  
}
