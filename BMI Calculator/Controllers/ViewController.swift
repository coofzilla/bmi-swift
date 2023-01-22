//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var heightLabel: UILabel!
    
    @IBOutlet weak var weightLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func heightSliderActionHandler(_ sender: UISlider) {
        let roundedHeight = round(sender.value * 10) / 10
        heightLabel.text = "\(roundedHeight)m"
    }
    
    @IBAction func weightSliderActionHandler(_ sender: UISlider) {
        let roundedWeight = round(sender.value * 10) / 10
        weightLabel.text = "\(roundedWeight)Kg"
    }
    
}

