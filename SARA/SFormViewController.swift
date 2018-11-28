//
//  SurvivorFormViewController.swift
//  SARA
//
//  Created by Conor Culleton on 11/27/18.
//  Copyright © 2018 Conor Culleton. All rights reserved.
//

import UIKit

class SFormViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate, UITextFieldDelegate{

    
    @IBOutlet weak var casePick: UIPickerView!
    @IBOutlet weak var caseLbl: UILabel!
    
    
    
    
    //var age = ["10", "11", "12","13", "14", "15", "16","17", "18", "19", "20","21", "22", "23", "24","25", "26", "27", "28","29", "30", "31", "32","33", "34", "35", "36","37", "38", "39", "40"]
    
    
    var nameOfCase = ["Sexual Assault", "Child Sexual Abuse", "Sexual Assault of Males", "Intimate Partner Sexual Assault", "Incest", "Drug-Facilitated Sexual Assualt"]
    //var gender = ["Male", "Female", "Transgender"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return nameOfCase.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return nameOfCase[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        caseLbl.text = nameOfCase[row]
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    
}
