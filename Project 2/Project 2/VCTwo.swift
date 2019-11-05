//
//  VCTwo.swift
//  Project 2
//
//  Created by Rayan Ahmed on 11/5/19.
//  Copyright © 2019 Russell Mirabelli. All rights reserved.
//

import UIKit

class VCTwo: UIViewController {
    
    @IBOutlet weak var labelSlider: UILabel!
    @IBOutlet weak var labelCount: UILabel!
    @IBOutlet weak var buttonContinue: UIButton!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var slider: UISlider!
    
    @IBAction func updatelabelCount(_ sender: Any) {
        labelCount.text = Int(stepper.value).description
        
        if stepper.value == 5 && Int(slider.value) == 5 {
            buttonContinue.isEnabled = true
        } else {
            buttonContinue.isEnabled = false
        }
        
    }
    @IBAction func updateSliderCount(_ sender: Any) {
        labelSlider.text = Int(slider.value).description
        
          if stepper.value == 5 && Int(slider.value) == 5 {
            buttonContinue.isEnabled = true
        } else {
            buttonContinue.isEnabled = false
        }
        
    }
}


