//
//  Endpoints.swift
//  Tasky
//
//  Created by Subodh Jena on 02/04/17.
//  Copyright © 2017 Subodh Jena. All rights reserved.
//

import Foundation


struct API {
    static let baseUrl = "https://www.ckl.io"
}

protocol Endpoint {
   
    var path: String { get }
    var url: String { get }
}

enum Endpoints {
    
    enum Articles: Endpoint {
        case fetch
        
        public var path: String {
            switch self {
            case .fetch: return "/challenge/"
            }
        }
        
        public var url: String {
            switch self {
            case .fetch: return "\(API.baseUrl)\(path)"
            }
        }
    }
}
