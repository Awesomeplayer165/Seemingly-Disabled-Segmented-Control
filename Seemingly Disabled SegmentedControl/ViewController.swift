//
//  ViewController.swift
//  Seemingly Disabled SegmentedControl
//
//  Created by Jacob Trentini on 8/29/21.
//

import UIKit

class ViewControllerA: UIViewController {
    @IBOutlet weak var sensorTypeLabel: UILabel!
    @IBOutlet weak var sensorTypeSegmentedControl: UISegmentedControl!
    
    @IBAction func switchAppearanceAction(_ sender: UIButton) {
        switch sender.titleLabel?.text {
        case "Switch to: Group By City Mode": disableAppearance()
        case "Switch to: Individual Sensor":  enableAppearance()
        default:                              fatalError()
        }
    }
    
    @IBOutlet weak var switchAppearanceButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    private func disableAppearance() {
        sensorTypeSegmentedControl.isUserInteractionEnabled = false
        sensorTypeLabel.layer.opacity = 0.7
        sensorTypeSegmentedControl.layer.opacity = 0.7
        switchAppearanceButton.setTitle("Switch to: Individual Sensor", for: .normal)
        
    }
    
    private func enableAppearance() {
        sensorTypeLabel.textColor = .black
        sensorTypeSegmentedControl.isUserInteractionEnabled = true
        sensorTypeLabel.layer.opacity = 1
        sensorTypeSegmentedControl.layer.opacity = 1
        switchAppearanceButton.setTitle("Switch to: Group By City Mode", for: .normal)
        
    }


}

