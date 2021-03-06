//
//  RightHandViewController.swift
//  ARQ
//
//  Created by Brenda Miao on 5/23/18.
//  Copyright © 2018 Brenda Miao. All rights reserved.
//

import UIKit

class RightHandViewController: UIViewController {
    
    @IBOutlet weak var nextButton: UIButton!
    var joints:Int = 0
    
    @IBAction func clickPainButton(_ sender: UIButton) {
        changePainButton(withImage: UIImage(named: "pain-unselected")!, on: sender)
    }
    
    
    @IBAction func clickSwellingButton(_ sender: UIButton) {
        changeSwellingButton(withImage: UIImage(named: "swelling-unselected")!, on: sender)
    }
    
    
    func changePainButton(withImage currState: UIImage, on button: UIButton) {
        if button.currentImage == UIImage(named: "pain-unselected")  {
            button.setImage(UIImage(named : "pain-selected"), for: UIControlState.normal)
            joints+=1
        }
        else {
            button.setImage(UIImage(named : "pain-unselected"), for: UIControlState.normal)
            joints-=1
        }
    }
    
    
    
    func changeSwellingButton(withImage currState: UIImage, on button: UIButton) {
        if button.currentImage == UIImage(named: "swelling-unselected")  {
            button.setImage(UIImage(named : "swelling-selected"), for: UIControlState.normal)
            joints+=1
        }
        else {
            button.setImage(UIImage(named : "swelling-unselected"), for: UIControlState.normal)
            joints-=1
        }
    }

    @IBAction func onNextButtonClick(_ sender: Any) {
        let data: DailyData = DailyData()
        data.setRightHandJoints(joints: joints)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
