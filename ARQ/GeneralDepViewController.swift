//
//  GeneralDepViewController.swift
//  ARQ
//
//  Created by dali on 5/21/18.
//  Copyright © 2018 Brenda Miao. All rights reserved.
//

import Foundation
import UIKit

class GeneralDepViewController: UIViewController {
    
    @IBAction func depYesButton(_ sender: UIButton) {
        //1. Create the alert controller.
        let alert = UIAlertController(title: "Depressed?", message: "Consider alerting your healthcare provider", preferredStyle: .alert)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .default, handler: { (action: UIAlertAction!) in })
        
        alert.addAction(cancelAction)
        // 3. Grab the value from the text field, and print it when the user clicks OK.
        alert.addAction(UIAlertAction(title: "Alert Provider", style: .default, handler: { [weak alert] (_) in
            
        }))
        
        // 4. Present the alert.
        self.present(alert, animated: true, completion: nil)
    }
    @IBOutlet weak var depButton: UISegmentedControl!
    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onClick(_ sender: Any) {

    }
    
    
}
