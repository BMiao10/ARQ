//
//  MedViewController.swift
//  ARQ
//
//  Created by Brenda Miao on 5/22/18.
//  Copyright © 2018 Brenda Miao. All rights reserved.
//

import UIKit

var global_med_array = ["Methotrexate"]

class MedViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    @IBOutlet weak var table_view: UITableView!
    
    @IBAction func medPopUp(_ sender: UIButton) {
       
        //1. Create the alert controller.
        let alert = UIAlertController(title: "Add Medication", message: "", preferredStyle: .alert)
        
        
        //2. Add the text field. You can configure it however you need.
        alert.addTextField { (textField) in
            textField.keyboardType = UIKeyboardType.alphabet
            textField.placeholder = "Enter Medication Name"
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .default, handler: { (action: UIAlertAction!) in })
        
        alert.addAction(cancelAction)
        // 3. Grab the value from the text field, and print it when the user clicks OK.
        alert.addAction(UIAlertAction(title: "Add", style: .default, handler: { [weak alert] (_) in
            let textField = alert?.textFields![0] // Force unwrapping because we know it exists.
            
            global_med_array.append((textField?.text)!)
            
            self.table_view.reloadData()
            
            let viewController:UIViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MedViewController") as UIViewController
            
            self.present(viewController, animated: false, completion: nil)
        }))
        
        // 4. Present the alert.
        self.present(alert, animated: true, completion: nil)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        table_view.delegate = self
        table_view.dataSource = self

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return global_med_array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell  = table_view.dequeueReusableCell(withIdentifier: "customCell") as! CustomTableViewCell?
        
        cell?.cellView.layer.cornerRadius = (cell?.cellView.frame.height)! / 3
        cell?.cellView.layer.borderWidth = 2
        cell?.cellView.layer.borderColor = #colorLiteral(red: 0.7960784314, green: 0.2941176471, blue: 0.2980392157, alpha: 1)
        cell?.selectionStyle = UITableViewCellSelectionStyle.none
        
        cell?.medLabel.text = global_med_array[indexPath.row]
       
        if (UIImage(named: "\(global_med_array[indexPath.row].lowercased())-icon") != nil)  {
            cell?.medImage.image = UIImage(named: "\(global_med_array[indexPath.row].lowercased())-icon")
        }
        else {
            cell?.medImage.image = UIImage(named: "methotrexate-icon")
        }
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 112
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