//
//  Task.swift
//  Tasky
//
//  Created by Subodh Jena on 3/20/17.
//  Copyright © 2017 Subodh Jena. All rights reserved.
//

import Foundation
import ObjectMapper

struct Task {
	
    public var id : String?
	public var user : User?
	public var title : String?
	public var description : String?
	public var createdAt : String?
	public var updatedAt : String?
}

extension Task: Mappable {
    
    init?(map: Map) {
        
    }
    
    mutating func mapping(map: Map) {
        id       <- map["id"]
        user     <- map["user"]
        title     <- map["title"]
        description     <- map["description"]
        createdAt    <- map["createdAt"]
        updatedAt        <- map["updatedAt"]
    }
}
