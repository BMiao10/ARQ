//
//  LeftHandViewController.swift
//  ARQ
//
//  Created by dali on 5/16/18.
//  Copyright © 2018 Brenda Miao. All rights reserved.
//

import UIKit

class LeftHandViewController: UIViewController {
    
    var joints:Int = 0

    @IBAction func clickPainButton(_ sender: UIButton) {
        changePainButton(withImage: UIImage(named: "pain-unselected")!, on: sender)
    }
    
    func changePainButton(withImage currState: UIImage, on button: UIButton) {
        if button.currentImage == UIImage(named: "pain-unselected")  {
            button.setImage(UIImage(named : "pain-selected"), for: UIControlState.normal)
            joints+=1
            print(joints)
        }
        else {
            button.setImage(UIImage(named : "pain-unselected"), for: UIControlState.normal)
            joints-=1
            print(joints)
        }
    }
    
    
    @IBAction func clickSwellingButton(_ sender: UIButton) {
        changeSwellingButton(withImage: UIImage(named: "pain-unselected")!, on: sender)
    }
    
    func changeSwellingButton(withImage currState: UIImage, on button: UIButton) {
        if button.currentImage == UIImage(named: "swelling-unselected")  {
            button.setImage(UIImage(named : "swelling-selected"), for: UIControlState.normal)
            joints+=1
            print(joints)
        }
        else {
            button.setImage(UIImage(named : "swelling-unselected"), for: UIControlState.normal)
            joints-=1
            print(joints)
        }
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
