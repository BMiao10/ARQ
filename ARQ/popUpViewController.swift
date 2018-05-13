//
//  popUpViewController.swift
//  ARQ
//
//  Created by Brenda Miao on 5/12/18.
//  Copyright © 2018 Brenda Miao. All rights reserved.
//

import UIKit

class popUpViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func closePopUp(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
}
