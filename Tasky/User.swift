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
	public var picture : String?
}

extension User: Mappable {
    
    init?(map: Map) {
        
    }
    
    mutating func mapping(map: Map) {
        id       <- map["id"]
        name     <- map["user"]
        picture     <- map["title"]
    }
}
