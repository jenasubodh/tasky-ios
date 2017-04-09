//
//  User.swift
//  Tasky
//
//  Created by Subodh Jena on 3/20/17.
//  Copyright © 2017 Subodh Jena. All rights reserved.
//

import Foundation
import SwiftyJSON

struct User {

    public var id : String?
	public var name : String?
	public var email : String?
    public var picture : String?
    public var createdAt : String?
    public var updatedAt : String?
}

extension User {
    
    init(json: JSON) {
        
        id = json["id"].stringValue
        name = json["name"].stringValue
        email = json["email"].string
        picture = json["picture"].string
        createdAt = json["createdAt"].string
        updatedAt = json["updatedAt"].string
    }

    func toParameters() -> [String : AnyObject] {
        
        var parameters = [String : AnyObject]()
        
        parameters["id"] = id as AnyObject
        parameters["name"] = name as AnyObject
        parameters["email"] = email as AnyObject
        parameters["picture"] = picture as AnyObject
        parameters["createdAt"] = createdAt as AnyObject
        parameters["updatedAt"] = updatedAt as AnyObject
        
        return parameters
    }
}
