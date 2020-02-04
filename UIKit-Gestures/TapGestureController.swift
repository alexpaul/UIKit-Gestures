//
//  TapGestureController.swift
//  UIKit-Gestures
//
//  Created by Alex Paul on 2/3/20.
//  Copyright © 2020 Alex Paul. All rights reserved.
//

import UIKit

/*
 UITapGestureRecogniezer()
 long press
 rotation: in radians, clockwise, counter-clockwise
 swipe, left, right, up, down
 pinch
 pan
 */

class TapGestureController: UIViewController {
  
  
  @IBOutlet weak var heartImageView: UIImageView!
  
  // 1. configure a tap gesture
  private lazy var tapGesture: UITapGestureRecognizer = {
    let gesture = UITapGestureRecognizer()
    gesture.addTarget(self, action: #selector(didTap(_:)))
    //gesture.numberOfTapsRequired = 1
    //gesture.numberOfTouchesRequired = 1
    return gesture
  }()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .yellow
    
    // 2. add the gesture to the image view
    heartImageView.addGestureRecognizer(tapGesture)
    heartImageView.isUserInteractionEnabled = true
  }
  
  // 3. we need a selector (method) that gets called when the gesture is triggered
  @objc private func didTap(_ gesture: UITapGestureRecognizer) {
    // TODO: complete
    heartImageView.image = UIImage(systemName: "heart.fill")
  }
}
