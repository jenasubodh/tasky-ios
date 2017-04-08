//
//  APIManagerProtocol.swift
//  Tasky
//
//  Created by Subodh Jena on 08/04/17.
//  Copyright © 2017 Subodh Jena. All rights reserved.
//

import Foundation
import Alamofire


protocol APIManagerProtocol {
    func apiRequest(_ endpoint: Endpoint, parameters: [String : AnyObject]?, headers: [String : String]?) -> APIRequestProtocol
}

extension APIManagerProtocol {
    
    func apiRequest(_ endpoint: Endpoint) -> APIRequestProtocol {
        return apiRequest(endpoint, parameters: nil, headers: nil)
    }
    
    func apiRequest(_ endpoint: Endpoint, parameters: [String : AnyObject]?) -> APIRequestProtocol {
        return apiRequest(endpoint, parameters: parameters, headers: nil)
    }
}
