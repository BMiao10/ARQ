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
        let stiffness = UserDefaults.standard.value(forKey: "stiffness") as! Int
        let general = UserDefaults.standard.value(forKey: "general") as! Int
        print("Trying to save data: " + String(general) + " " + String(stiffness))
        var model = DailyDataModel(stiffnessValue: stiffness, generalValue: general)
        loadData()
        print("current data:")
        for data in store.userData {
            print(data.stiffnessValue!)
        }
        save(dailyDataItem: model)
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
