//
//  Utilities.swift
//  Tasky
//
//  Created by Subodh Jena on 10/04/17.
//  Copyright © 2017 Subodh Jena. All rights reserved.
//

import Foundation

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
