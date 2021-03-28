//
//  resultNewControllerViewController.swift
//  BMI Calculator
//
//  Created by Shivani Ahuja on 1/1/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

class resultNewControllerViewController: UIViewController {
    
    var bmiValue: String?

    @IBOutlet weak var calculatedBmiDisplay: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        calculatedBmiDisplay.text = bmiValue

        // Do any additional setup after loading the view.
    }
    
    

}
