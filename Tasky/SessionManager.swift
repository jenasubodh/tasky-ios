//
//  SessionManager.swift
//  Tasky
//
//  Created by Subodh Jena on 08/04/17.
//  Copyright © 2017 Subodh Jena. All rights reserved.
//

import Foundation
import Alamofire

extension SessionManager : APIManagerProtocol {
    
    func apiRequest(_ endpoint: Endpoint, parameters: [String : AnyObject]?, headers: [String : String]?) -> APIRequestProtocol {
        
        var commonHeaders = ["Accept" : "application/json"]
        if let headers = headers {
            commonHeaders += headers
        }
        
        return request(endpoint.url, method: endpoint.method, parameters: parameters, encoding: JSONEncoding.default, headers: commonHeaders)
    }
}
