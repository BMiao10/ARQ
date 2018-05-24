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
        var depBool: Bool
        var depValue = depButton.titleForSegment(at: depButton.selectedSegmentIndex)!
       
        if (depValue == "Yes") {
            depBool = true
        } else {
            depBool = false
        }
        
        let data: DailyData = DailyData()
       // data.setDep(dep: depBool)
        
        //data.saveData()
    }
    
    
}
