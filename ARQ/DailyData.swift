//
//  DailyData.swift
//  ARQ
//
//  Created by dali on 5/20/18.
//  Copyright © 2018 Brenda Miao. All rights reserved.
//

import Foundation

class DailyData {
    var stiffness: Int = 0
    var dep: Bool = false
    
    func setStiffness(stiffness: Int) {
        self.stiffness = stiffness
    }
    
    func setDep(dep: Bool) {
        self.dep = dep
    }
    
    func saveData() {
        var model = DailyDataModel(stiffnessValue: stiffness, depressionBool: dep)
    }
}
