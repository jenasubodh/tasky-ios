//
//  Auth.swift
//  Tasky
//
//  Created by Subodh Jena on 07/04/17.
//  Copyright © 2017 Subodh Jena. All rights reserved.
//

import Foundation
import SwiftyJSON

struct Auth {
    
    public var token : String?
    public var user : User?
}

extension Auth {
    
    init(json: JSON) {
        token = json["token"].stringValue
        user = User(json: json["user"])
    }
    
    func toParameters() -> [String : AnyObject] {
        
        var parameters = [String : AnyObject]()
        
        parameters["token"] = token as AnyObject
        parameters["user"] = user as AnyObject
        
        return parameters
    }
}
