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
    public var password : String?
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
        
        if let id = id {
            parameters["id"] = id as AnyObject
        }
        
        if let name = name {
            parameters["name"] = name as AnyObject
        }
        
        if let email = email {
            parameters["email"] = email as AnyObject
        }
        
        if let password = password {
            parameters["password"] = password as AnyObject
        }
        
        if let picture = picture {
            parameters["picture"] = picture as AnyObject
        }
        
        if let createdAt = createdAt {
            parameters["createdAt"] = createdAt as AnyObject
        }
        
        if let updatedAt = updatedAt {
            parameters["updatedAt"] = updatedAt as AnyObject
        }

        return parameters
    }
}
