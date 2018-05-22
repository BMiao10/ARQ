//
//  ARQ
//
//  Created by dali on 5/20/18.
//  Copyright © 2018 Brenda Miao. All rights reserved.
//

import Foundation

class DailyDataModel: NSObject, NSCoding {
    var stiffnessValue: Int!
    var depressionBool: Bool!
    
    
    // Name different keys we will use to store and access data
    struct PropertyKeys {
        static let stiffness = "stiffness"
        static let depression = "depression"
    }
    
    override init() {}
    
    init(stiffnessValue: Int, depressionBool: Bool) {
        self.stiffnessValue = stiffnessValue
        self.depressionBool = depressionBool
    }
    
    required init(coder decoder: NSCoder) {
        if let stiffnessObject = decoder.decodeObject(forKey: PropertyKeys.stiffness) as? Int {
            stiffnessValue = stiffnessObject
        }
        
        if let depressionObject = decoder.decodeObject(forKey: PropertyKeys.depression) as? Bool {
            depressionBool = depressionObject
        }
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encode(stiffnessValue, forKey: PropertyKeys.stiffness)
        aCoder.encode(depressionBool, forKey: PropertyKeys.depression)
    }
    
    func encode(with coder: NSCoder) {
        coder.encode(stiffnessValue, forKey: PropertyKeys.stiffness)
        coder.encode(depressionBool, forKey: PropertyKeys.depression)
    }
    
    func getStiffnessValue() -> Int {
        return stiffnessValue
    }
    
    func getDepBool() -> Bool {
        return depressionBool
    }
}
