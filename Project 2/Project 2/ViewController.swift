//
//  ViewController.swift
//  Project 2
//
//  Created by Russell Mirabelli on 10/26/19.
//  Copyright © 2019 Russell Mirabelli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var switchD: UISwitch!
    @IBOutlet weak var switchC: UISwitch!
    @IBOutlet weak var labelB: UILabel!
    @IBOutlet weak var labelA: UILabel!
    @IBOutlet weak var buttonContinue: UIButton!
    @IBOutlet weak var switchB: UISwitch!
    @IBOutlet weak var switchA: UISwitch!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func switchB(_ sender: UISwitch) {
        if (switchA.isOn && switchB.isOn && switchC.isOn && switchD.isOn) {
            buttonContinue.isEnabled = true
        } else {
            buttonContinue.isEnabled = false
        }
    }
    @IBAction func switchA(_ sender: UISwitch) {
        if (switchA.isOn && switchB.isOn && switchC.isOn && switchD.isOn) {
            buttonContinue.isEnabled = true
        } else {
            buttonContinue.isEnabled = false
        }
    }
    
    @IBAction func switchD(_ sender: Any) {
        if (switchA.isOn && switchB.isOn && switchC.isOn && switchD.isOn) {
            buttonContinue.isEnabled = true
        } else {
            buttonContinue.isEnabled = false
        }
    }
    @IBAction func switchC(_ sender: Any) {
        if (switchA.isOn && switchB.isOn && switchC.isOn && switchD.isOn) {
            buttonContinue.isEnabled = true
        } else {
            buttonContinue.isEnabled = false
        }
    }
    @IBAction func changeSwitch(_ sender: UISegmentedControl) {
        if segmentedControl.selectedSegmentIndex == 1 {
            labelA.text = "C"
            labelB.text = "D"
            
            switchC.isHidden = false
            switchD.isHidden = false
            switchA.isHidden = true
            switchB.isHidden = true
        } else {
            labelA.text = "A"
            labelB.text = "B"
            
            switchC.isHidden = true
            switchD.isHidden = true
            switchA.isHidden = false
            switchB.isHidden = false
        }
    }
}

