//
//  VCFour.swift
//  Project 2
//
//  Created by Rayan Ahmed on 11/5/19.
//  Copyright © 2019 Russell Mirabelli. All rights reserved.
//

import UIKit


class VCFour: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    @IBOutlet weak var buttonContinue: UIButton!
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return self.states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return self.states[row].name
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if textField.text == self.states[row].capital {
            buttonContinue.isEnabled = true
        } else {
            buttonContinue.isEnabled = false
        }
    }
    
    struct State {
        let name: String
        let capital: String
    }

    @IBOutlet weak var picker: UIPickerView!
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.picker.delegate = self
        self.picker.dataSource = self
        self.textField.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder();
        return true;
    }
    @IBAction func updateText(_ sender: Any) {
        print(self.states [picker.selectedRow(inComponent: 0)].capital)
        if textField.text  == self.states [picker.selectedRow(inComponent: 0)].capital{
            
            buttonContinue.isEnabled = true
        } else {
            buttonContinue.isEnabled = false
        }
    }
    let states = [
        State(name: "Alabama", capital: "Montgomery"),
        State(name: "Alaska", capital: "Juneau"),
        State(name: "Arizona", capital: "Phoenix"),
        State(name: "Arkansas", capital: "Little Rock"),
        State(name: "California", capital: "Sacramento"),
        State(name: "Colorado", capital: "Denver"),
        State(name: "Connecticut", capital: "Hartford"),
        State(name: "Delaware", capital: "Dover"),
        State(name: "Florida", capital: "Tallahassee"),
        State(name: "Georgia", capital: "Atlanta"),
        State(name: "Hawaii", capital: "Honolulu"),
        State(name: "Idaho", capital: "Boise"),
        State(name: "Illinois", capital: "Springfield"),
        State(name: "Indiana", capital: "Indianapolis"),
        State(name: "Iowa", capital: "Des Moines"),
        State(name: "Kansas", capital: "Topeka"),
        State(name: "Kentucky", capital: "Frankfort"),
        State(name: "Louisiana", capital: "Baton Rouge"),
        State(name: "Maine", capital: "Augusta"),
        State(name: "Maryland", capital: "Annapolis"),
        State(name: "Massachusetts", capital: "Boston"),
        State(name: "Michigan", capital: "Lansing"),
        State(name: "Minnesota", capital: "Saint Paul"),
        State(name: "Mississippi", capital: "Jackson"),
        State(name: "Missouri", capital: "Jefferson City"),
        State(name: "Montana", capital: "Helana"),
        State(name: "Nebraska", capital: "Lincoln"),
        State(name: "Nevada", capital: "Carson City"),
        State(name: "New Hampshire", capital: "Concord"),
        State(name: "New Jersey", capital: "Trenton"),
        State(name: "New Mexico", capital: "Santa Fe"),
        State(name: "New York", capital: "Albany"),
        State(name: "North Carolina", capital: "Raleigh"),
        State(name: "North Dakota", capital: "Bismarck"),
        State(name: "Ohio", capital: "Columbus"),
        State(name: "Oklahoma", capital: "Oklahoma City"),
        State(name: "Oregon", capital: "Salem"),
        State(name: "Pennsylvania", capital: "Harrisburg"),
        State(name: "Rhode Island", capital: "Providence"),
        State(name: "South Carolina", capital: "Columbia"),
        State(name: "South Dakota", capital: "Pierre"),
        State(name: "Tennessee", capital: "Nashville"),
        State(name: "Texas", capital: "Austin"),
        State(name: "Utah", capital: "Salt Lake City"),
        State(name: "Vermont", capital: "Montpelier"),
        State(name: "Virginia", capital: "Richmond"),
        State(name: "Washington", capital: "Olympia"),
        State(name: "West Virginia", capital: "Charleston"),
        State(name: "Wisconsin", capital: "Madison"),
        State(name: "Wyoming", capital: "Cheyenne")
    ]
    
}
