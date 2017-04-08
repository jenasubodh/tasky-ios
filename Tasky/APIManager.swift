//
//  APIManager.swift
//  Tasky
//
//  Created by Subodh Jena on 05/04/17.
//  Copyright © 2017 Subodh Jena. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

final class APIManager {
    
    fileprivate let manager: SessionManager
    
    private init() {
        self.manager = SessionManager()
    }
    
    static let sharedInstance: APIManager = APIManager()
    
    // MARK :- Authentication
    
    // func authenticateUser(email: String, password: String, completionHandler: (APIResult<Auth>)) -> Void {
    func authenticateUser(email: String, password: String) -> Void {
       
        var headers: HTTPHeaders = [:]
        if let authorizationHeader = Request.authorizationHeader(user: email, password: password) {
            headers[authorizationHeader.key] = authorizationHeader.value
        }
        
        let parameters: Parameters = ["access_token": API.masterKey]
        
        manager.apiRequest(Endpoints.Auth.Login(), parameters: parameters as [String : AnyObject], headers: headers).responseJSON { response in
            
            print(response.request!)  // original URL request
            print(response.response!) // HTTP URL response
            print(response.data!)     // server data
            print(response.result)   // result of response serialization
            
            if let json = response.result.value {
                print("JSON: \(json)")
            }
            
            let authJSON = JSON(response.data!)
            let auth = Auth(json: authJSON)
        }
    }
}

