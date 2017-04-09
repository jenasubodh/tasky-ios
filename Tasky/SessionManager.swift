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

extension SessionManager {
    
    func apiRequest(_ endpoint: Endpoint, parameters: [String : AnyObject]?, headers: [String : String]?) -> DataRequest {
        
        var commonHeaders = ["Accept" : "application/json"]
        if let headers = headers {
            commonHeaders += headers
        }
        
        return request(endpoint.url, method: endpoint.method, parameters: parameters, encoding: JSONEncoding.default, headers: commonHeaders)
    }
}
