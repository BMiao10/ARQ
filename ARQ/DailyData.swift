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
    
    func setDep(dep: Bool) {
        UserDefaults.standard.set(dep, forKey: "depression")
        print("Just set depression: " + String(dep))
    }
    
    func saveData() {
        let stiffness = UserDefaults.standard.value(forKey: "stiffness") as! Int
        let dep = UserDefaults.standard.value(forKey: "depression") as! Bool
        print("Trying to save data: " + String(dep) + " " + String(stiffness))
        var model = DailyDataModel(stiffnessValue: stiffness, depressionBool: dep)
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
