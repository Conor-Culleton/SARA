//
//  PLogViewController.swift
//  SARA
//
//  Created by Conor Culleton on 11/27/18.
//  Copyright © 2018 Conor Culleton. All rights reserved.
//

import UIKit

class PLogViewController: UIViewController {
    var accounts = [String]()
    
    override func viewDidLoad() {
        
    }
    
    
    
    @IBOutlet weak var EmailText: UITextField!
    @IBOutlet weak var PassText: UITextField!
    @IBAction func Login(_ sender: Any) {
        let result = EmailText.text! + " " + PassText.text!
        if(accounts.contains(result)){
            
            self.performSegue(withIdentifier: "toWaiting", sender: self)
            
        }
        
    }
    
    @IBAction func create(_ sender: Any) {
        let result = EmailText.text! + " " + PassText.text!
        accounts.append(result)

    }
    /*
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var ProWaitingViewController = segue.destination as! PLogViewController
 
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
*/

}
