//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import Darwin

class ViewController: UIViewController {
    
    @IBOutlet weak var heightSlider: UISlider!
    
    @IBOutlet weak var weightSlider: UISlider!
    
    @IBOutlet weak var heightDisplay: UILabel!
    
    @IBOutlet weak var weightDisplay: UILabel!
    
    var result : String = ""
    var calulatedValue: Float = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
 
    @IBAction func weightSliderMoved(_ sender: UISlider) {
        weightDisplay.text = String(format: "%.1f", sender.value) + "kg"
    }
    
    @IBAction func heightSliderMoved(_ sender: UISlider) {
        heightDisplay.text = String(format: "%.2f", sender.value) + "m"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        var heightSquared = heightSlider.value * heightSlider.value
        var weight = weightSlider.value
        calulatedValue = weight / heightSquared
        result = String(format: "%.2f", calulatedValue)
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! resultNewControllerViewController
            destinationVC.bmiValue = result
        }
    }
    
}

