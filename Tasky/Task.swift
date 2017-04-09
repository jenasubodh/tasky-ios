//
//  Task.swift
//  Tasky
//
//  Created by Subodh Jena on 3/20/17.
//  Copyright © 2017 Subodh Jena. All rights reserved.
//

import Foundation
import SwiftyJSON

struct Task {
	
    public var id : String?
	public var user : User?
	public var title : String?
	public var description : String?
	public var createdAt : String?
	public var updatedAt : String?
}

extension Task {
    
    init(json: JSON) {
        id = json["id"].stringValue
        user = User(json: json["user"])
        title = json["title"].stringValue
        description = json["description"].string
        createdAt = json["createdAt"].string
        updatedAt = json["updatedAt"].string
    }
    
    func toParameters() -> [String : AnyObject] {
       
        var parameters = [String : AnyObject]()
        
        if let id = id {
            parameters["id"] = id as AnyObject
        }
        
        if let user = user {
            parameters["user"] = user as AnyObject
        }
        
        if let title = title {
            parameters["title"] = title as AnyObject
        }
        
        if let description = description {
            parameters["description"] = description as AnyObject
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
