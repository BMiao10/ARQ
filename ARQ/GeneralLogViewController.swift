//
//  GeneralLogViewController.swift
//  ARQ
//
//  Created by dali on 5/16/18.
//  Copyright © 2018 Brenda Miao. All rights reserved.
//

import UIKit

class GeneralLogViewController: UIViewController {
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var stiffnessSlider: UISlider!
    @IBOutlet weak var generalSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func onNextButtonClick(_ sender: Any) {
        let stiffness = round(stiffnessSlider.value)
        let general = round(generalSlider.value)
        
        let data: DailyData = DailyData()
        data.setStiffness(stiffness: Int(stiffness))
        data.setGeneral(general: Int(general))
    }
}
