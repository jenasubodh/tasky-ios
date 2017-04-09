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

extension DataRequest {
    
    static func apiResponseSerializer() -> DataResponseSerializer<JSON> {
        
        return DataResponseSerializer { request, response, data, error in
            
            guard error == nil else { return .failure(error!) }

            let result = Request.serializeResponseData(response: response, data: data, error: nil)
            
            guard case let .success(validData) = result else {
                
                let reason = "Data could not be serialized. Input data was nil."
                return .failure(NSError(domain: "com.subodhjena.tasky", code: 1001, userInfo: [NSLocalizedDescriptionKey : reason]))
            }
            
            do {
                let json = try JSON(data: validData)
                return sanitizeError(json: json)
            } catch let error as NSError {
                return .failure(error)
            }
        }
    }

    static func sanitizeError(json: JSON) -> Result<JSON> {
       
        if json["error"].object == nil {
            return .success(json)
        }
        
        let code = json["error"]["code"].intValue
        let message = json["error"]["message"].stringValue
        let error = NSError(domain: "com.subodhjena.tasky", code: code, userInfo: [NSLocalizedDescriptionKey : message])
        return .failure(error)
    }
}
