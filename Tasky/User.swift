//
//  User.swift
//  Tasky
//
//  Created by Subodh Jena on 3/20/17.
//  Copyright © 2017 Subodh Jena. All rights reserved.
//

import Foundation
import ObjectMapper

struct User {

    public var id : String?
	public var name : String?
	public var email : String?
    public var picture : String?
    public var createdAt : String?
    public var updatedAt : String?
}

extension User: Mappable {
    
    init?(map: Map) {
        
    }
    
    mutating func mapping(map: Map) {
        id       <- map["id"]
        name     <- map["name"]
        email     <- map["email"]
        picture     <- map["picture"]
        createdAt     <- map["createdAt"]
        updatedAt     <- map["updatedAt"]
    }
}
