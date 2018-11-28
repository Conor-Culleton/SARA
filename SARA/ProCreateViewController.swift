//
//  ProCreateViewController.swift
//  SARA
//
//  Created by Conor Culleton on 11/27/18.
//  Copyright © 2018 Conor Culleton. All rights reserved.
//

import UIKit

class ProCreateViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    var myDict = ["SexualAssault" : false, "ChildSexualAbuse" : false, "SexualAssaultofMales" : false, "IntimatePartnerSexualAssault" : false, "Incest" : false, "DrugFacilitatedSexualAssualt" : false]
    
    @IBOutlet weak var Gend: UILabel!
    @IBOutlet weak var GenPick: UIPickerView!
    @IBOutlet weak var Name: UILabel!
    @IBOutlet weak var NameText: UITextField!
    @IBOutlet weak var switch1: UISwitch!
    @IBAction func SASwitch(_ sender: UISwitch) {
        if switch1.isOn{
            myDict["SexualAssault"] = true
        }
    }
    @IBOutlet weak var switch2: UISwitch!
    @IBAction func CSASwitch(_ sender: Any) {
        if switch2.isOn{
            myDict["ChildSexualAbuse"] = true
        }
    }
    @IBOutlet weak var switch3: UISwitch!
    @IBAction func SAMSwitch(_ sender: Any) {
        if switch3.isOn{
            myDict["SexualAssaultofMales"] = true
        }
    }
    @IBOutlet weak var switch4: UISwitch!
    @IBAction func IPSVSwitch(_ sender: Any) {
        if switch4.isOn{
            myDict["IntimatePartnerSexualAssault"] = true
        }
    }
    @IBOutlet weak var switch5: UISwitch!
    @IBAction func ISwitch(_ sender: Any) {
        if switch5.isOn{
            myDict["Incest"] = true
        }
    }
    @IBOutlet weak var switch6: UISwitch!
    @IBAction func DFSASwitch(_ sender: Any) {
        if switch6.isOn{
            myDict["DrugFacilitatedSexualAssualt"] = true
        }
    }
    @IBOutlet weak var EmailText: UITextField!
    @IBOutlet weak var PassText: UITextField!
    
    
    
    let gender = ["Male", "Female", "Transgender"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return gender.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return gender[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        Gend.text = gender[row]
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    /*
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is ProWaitingViewController{
            ProWaitingViewController = SASwitch
            
        }
    }
*/
   
}
