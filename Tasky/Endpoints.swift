//
//  Endpoints.swift
//  Tasky
//
//  Created by Subodh Jena on 02/04/17.
//  Copyright © 2017 Subodh Jena. All rights reserved.
//

import Foundation

struct API {
    static let baseUrl = "https://tasky-api.herokuapp.com/"
}

protocol Endpoint {
   
    var path: String { get }
    var url: String { get }
}

enum Endpoints {
    
    enum Tasks: Endpoint {
        
        case all
        
        public var path: String {
            switch self {
                case .all: return "/tasks/"
            }
        }
        
        public var url: String {
            switch self {
                case .all: return "\(API.baseUrl)\(path)"
            }
        }
    }
}
