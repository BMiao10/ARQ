//
//  ARQ
//
//  Created by dali on 5/20/18.
//  Copyright © 2018 Brenda Miao. All rights reserved.
//

import Foundation

class DailyDataModel: NSObject, NSCoding {
    var stiffnessValue: Int!
    var generalValue: Int!
    
    
    // Name different keys we will use to store and access data
    struct PropertyKeys {
        static let stiffness = "stiffness"
        static let general = "general"
    }
    
    override init() {}
    
    init(stiffnessValue: Int, generalValue: Int) {
        self.stiffnessValue = stiffnessValue
        self.generalValue = generalValue
    }
    
    required init(coder decoder: NSCoder) {
        if let stiffnessObject = decoder.decodeObject(forKey: PropertyKeys.stiffness) as? Int {
            stiffnessValue = stiffnessObject
        }
        
        if let generalObject = decoder.decodeObject(forKey: PropertyKeys.general) as? Int {
            generalValue = generalObject
        }
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encode(stiffnessValue, forKey: PropertyKeys.stiffness)
        aCoder.encode(generalValue, forKey: PropertyKeys.general)
    }
    
    func encode(with coder: NSCoder) {
        coder.encode(stiffnessValue, forKey: PropertyKeys.stiffness)
        coder.encode(generalValue, forKey: PropertyKeys.general)
    }
    
    func getStiffnessValue() -> Int {
        return stiffnessValue
    }
    
    func getGeneralValue() -> Int {
        return generalValue
    }
}
