//
//  DailyData.swift
//  ARQ
//
//  Created by dali on 5/20/18.
//  Copyright © 2018 Brenda Miao. All rights reserved.
//

import Foundation

class DailyData {
    
    let store = DataStorage.sharedInstance
    
    func setStiffness(stiffness: Int) {
        UserDefaults.standard.set(stiffness, forKey: "stiffness")
        print("Just set stiffness: " + String(stiffness))
    }
    
    func setGeneral(general: Int) {
        UserDefaults.standard.set(general, forKey: "general")
        print("Just set general: " + String(general))
    }
    
    func setLeftHandJoints(joints: Int) {
        UserDefaults.standard.set(joints, forKey: "leftJoints")
        print("Just set left joints: " + String(joints))
    }
    
    func setRightHandJoints(joints: Int) {
        UserDefaults.standard.set(joints, forKey: "rightJoints")
        print("Just set right joints: " + String(joints))
    }
    
    func setMedicationNames(medications: [String]) {
        UserDefaults.standard.set(medications, forKey: "medications")
        print("Just set medications:")
        dump(medications)
    }
    
    func setMedicationDoses(doses: [Int]) {
        UserDefaults.standard.set(doses, forKey: "doses")
        print("Just set dosages:")
        dump(doses)
    }
    
    func saveData() {
        let general = UserDefaults.standard.value(forKey: "general") as! Int
        let rightJoints = UserDefaults.standard.value(forKey: "rightJoints") as! Int
        let leftJoints = UserDefaults.standard.value(forKey: "leftJoints") as! Int
        let meds = UserDefaults.standard.value(forKey: "medications") as! [String]
        let doses = UserDefaults.standard.value(forKey: "doses") as! [Int]
        let stiffness = UserDefaults.standard.value(forKey: "stiffness") as! Int
        let index = self.store.userData.count
        
        print("Trying to save data: " + String(general) + " " + String(describing: meds))
        
        let overall = calculateOverallWellness(general: general, joints: (rightJoints + leftJoints), stiffness: stiffness)
        var model = DailyDataModel(index: index, overallValue: overall, meds: meds, doses: doses)
        loadData()
        print("current data:")
        for data in store.userData {
            print(data.overallValue!)
        }
        save(dailyDataItem: model)
    }
    
    func calculateOverallWellness(general: Int, joints: Int, stiffness: Int) -> Int {
        return 0
    }
    
    var filePath: String {
        let manager = FileManager.default
        let url = manager.urls(for: .documentDirectory, in: .userDomainMask).first
        print("this is the url path in the documentDirectory " + (url?.absoluteString)!)
        return (url!.appendingPathComponent("Data").path)
    }
    
    private func save(dailyDataItem: DailyDataModel) {
        self.store.userData.append(dailyDataItem)
        NSKeyedArchiver.archiveRootObject(self.store.userData, toFile: filePath)
    }
    
    private func loadData() {
        if let ourData = NSKeyedUnarchiver.unarchiveObject(withFile: filePath) as? [DailyDataModel] {
            self.store.userData = ourData
        }
    }
}
