//
//  RightHandViewController.swift
//  ARQ
//
//  Created by Brenda Miao on 5/23/18.
//  Copyright © 2018 Brenda Miao. All rights reserved.
//

import UIKit

class RightHandViewController: UIViewController {
    
    var joints:Int = 0
    
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
