//
//  VCThree.swift
//  Project 2
//
//  Created by Rayan Ahmed on 11/5/19.
//  Copyright © 2019 Russell Mirabelli. All rights reserved.
//

import UIKit

class VCThree: UIViewController {
    
    @IBOutlet weak var animation: UIActivityIndicatorView!
    @IBOutlet weak var buttonContinue: UIButton!
    @IBAction func checkDate(_ sender: UIDatePicker) {
        
        let dateComponents = DateComponents(year: 2019, month: 12, day: 25)
        
        let userCalendar = Calendar.current // user calendar
        let chirstmasDate = userCalendar.date(from: dateComponents)
        
        if datePicker.date == chirstmasDate {
            animation.stopAnimating()
            buttonContinue.isEnabled = true
        } else {
            animation.startAnimating()
            buttonContinue.isEnabled = false
        }
    }
    @IBOutlet weak var datePicker: UIDatePicker!
}
