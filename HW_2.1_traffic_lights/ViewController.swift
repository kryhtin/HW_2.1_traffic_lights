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
    
    private var position = Position.red
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLight.layer.cornerRadius = redLight.frame.width / 2
        orangeLight.layer.cornerRadius = orangeLight.frame.width / 2
        greenLight.layer.cornerRadius = greenLight.frame.width / 2
        
        redLight.alpha = lightIsOff
        orangeLight.alpha = lightIsOff
        greenLight.alpha = lightIsOff
    }

    @IBAction func actionButtonPressed(_ sender: UIButton) {
        actionButton.setTitle("NEXT", for: .normal)
        
        switch position {
        case .red:
            greenLight.alpha = lightIsOff
            redLight.alpha = lightIsOn
            position = .orange
        case .orange:
            redLight.alpha = lightIsOff
            orangeLight.alpha = lightIsOn
            position = .green
        case .green:
            orangeLight.alpha = lightIsOff
            greenLight.alpha = lightIsOn
            position = .red
        }
    }
}
