//
//  SendViewController.swift
//  ARQ
//
//  Created by Brenda Miao on 5/21/18.
//  Copyright © 2018 Brenda Miao. All rights reserved.
//

import UIKit
import WebKit

class SendViewController: UIViewController {

    @IBOutlet weak var webview: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let url = URL(string: "https://www.mydh.org/portal/");
        let request = URLRequest(url: url!);
        webview.loadRequest(request);
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
