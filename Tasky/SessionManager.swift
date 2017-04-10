//
//  SessionManager.swift
//  Tasky
//
//  Created by Subodh Jena on 08/04/17.
//  Copyright © 2017 Subodh Jena. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

extension SessionManager : SessionManagerProtocol{
    
    func apiRequest(endpoint: EndpointProtocol, parameters: [String : AnyObject]? = nil, headers: [String : String]? = nil) -> DataRequest {
        
        var commonHeaders = ["Accept" : "application/json"]
        if let headers = headers {
            commonHeaders += headers
        }
        
        let req = request(endpoint.url, method: endpoint.method, parameters: parameters, encoding: JSONEncoding.default, headers: commonHeaders)
        
        print(endpoint.url)
        
        return req
    }
}
