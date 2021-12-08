//
//  ViewController.swift
//  HW_2.1_traffic_lights
//
//  Created by Dmitriy Kryhtin on 08.12.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var orangeLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    @IBOutlet weak var actionButton: UIButton!

    enum Position {
        case red, orange, green
    }
    
    var position = Position.red

    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLight.layer.cornerRadius = 50
        orangeLight.layer.cornerRadius = 50
        greenLight.layer.cornerRadius = 50
        
        redLight.alpha = 0.3
        orangeLight.alpha = 0.3
        greenLight.alpha = 0.3
    }

    @IBAction func actionButtonPressed(_ sender: UIButton) {
        actionButton.setTitle("NEXT", for: .normal)
        
        switch position {
        case .red:
            greenLight.alpha = 0.2
            redLight.alpha = 1
            position = .orange
        case .orange:
            redLight.alpha = 0.2
            orangeLight.alpha = 1
            position = .green
        case .green:
            orangeLight.alpha = 0.2
            greenLight.alpha = 1
            position = .red
        }
    }
}
