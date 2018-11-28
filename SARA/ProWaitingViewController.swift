//
//  ProWaitingViewController.swift
//  SARA
//
//  Created by Conor Culleton on 11/27/18.
//  Copyright © 2018 Conor Culleton. All rights reserved.
//

import UIKit

class ProWaitingViewController: UIViewController {
    
    @IBOutlet weak var SAss: UILabel!
    @IBOutlet weak var CSAbu: UILabel!
    @IBOutlet weak var SAMal: UILabel!
    @IBOutlet weak var IPSAss: UILabel!
    @IBOutlet weak var Inc: UILabel!
    @IBOutlet weak var DFSAss: UILabel!
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

            SAss.isHidden = true
        
    }
    
    

}

/*

override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.destination is ProWaitingViewController{
        let vc = segue.destination as? ProWaitingViewController
        vc?.Name = "Tommy Gee"
    }
}
*/
