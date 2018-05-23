//
//  DataStorage.swift
//  ARQ
//
//  Created by dali on 5/20/18.
//  Copyright © 2018 Brenda Miao. All rights reserved.
//

import Foundation

class DataStorage {
    static let sharedInstance = DataStorage()
    
    private init() {}
    
    var userData : [DailyDataModel] = []
}
