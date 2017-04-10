//
//  Globals.swift
//  Tasky
//
//  Created by Subodh Jena on 07/04/17.
//  Copyright © 2017 Subodh Jena. All rights reserved.
//

import Foundation


// MARK :- Global Keys

func += <K, V> (left: inout [K : V], right: [K : V]) {
    for (k, v) in right {
        left.updateValue(v, forKey: k)
    }
}

class Utilities {
    
    class func getAuthKey() -> String? {
        
        let defaults = UserDefaults.standard
        return defaults.string(forKey: Keys.userDefaultsAuthKey)
    }
    
    class func setAuthKey(authKey: String) {
        
        let defaults = UserDefaults.standard
        defaults.set(authKey, forKey: Keys.userDefaultsAuthKey)
        defaults.synchronize()
    }
}

struct Keys {
    
    static let userDefaultsAuthKey = "authorizationKey"
}
