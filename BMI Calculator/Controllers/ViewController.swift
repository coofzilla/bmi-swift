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
    
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var weightLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func heightSliderActionHandler(_ sender: UISlider) {
        let roundedHeight = round(sender.value * 100) / 100
        heightLabel.text = "\(roundedHeight)m"
    }
    
    @IBAction func weightSliderActionHandler(_ sender: UISlider) {
        let roundedWeight = Int(sender.value)
        weightLabel.text = "\(roundedWeight)Kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        let bmi = weight / (height * height)
        print(bmi)
    }
}

