//
//  ARQ
//
//  Created by dali on 5/20/18.
//  Copyright © 2018 Brenda Miao. All rights reserved.
//

import Foundation

class DailyDataModel: NSObject, NSCoding {
    var index: Int!
    var overallValue: Int!
    var medications: [String]!
    var doses: [Int]!
    
    
    // Name different keys we will use to store and access data
    struct PropertyKeys {
        static let index = "index"
        static let doses = "doses"
        static let medications = "medications"
        static let overall = "overall"
    }
    
    override init() {}
    
    init(index: Int, overallValue: Int, meds: [String], doses: [Int]) {
        self.index = index
        self.overallValue = overallValue
        self.medications = meds
        self.doses = doses
    }
    
    required init(coder decoder: NSCoder) {
        if let indexObject = decoder.decodeObject(forKey: PropertyKeys.index) as? Int {
            index = indexObject
        }
        
        if let generalObject = decoder.decodeObject(forKey: PropertyKeys.overall) as? Int {
            overallValue = generalObject
        }
        
        if let medObject = decoder.decodeObject(forKey: PropertyKeys.medications) as? [String] {
            medications = medObject
        }
        
        if let dosesObject = decoder.decodeObject(forKey: PropertyKeys.doses) as? [Int] {
            doses = dosesObject
        }
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encode(index, forKey: PropertyKeys.index)
        aCoder.encode(overallValue, forKey: PropertyKeys.overall)
        aCoder.encode(medications, forKey: PropertyKeys.medications)
        aCoder.encode(doses, forKey: PropertyKeys.doses)
    }
    
    func encode(with coder: NSCoder) {
        coder.encode(index, forKey: PropertyKeys.index)
        coder.encode(overallValue, forKey: PropertyKeys.overall)
        coder.encode(medications, forKey: PropertyKeys.medications)
        coder.encode(doses, forKey: PropertyKeys.doses)
    }
    
    func getIndex() -> Int {
        return index
    }
    
    func getMeds() -> [String] {
        return medications
    }
    
    func getDoses() -> [Int] {
        return doses
    }
    
    func getOverallValue() -> Int {
        return overallValue
    }
}
