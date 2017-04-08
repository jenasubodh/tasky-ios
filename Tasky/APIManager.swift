//
//  APIManager.swift
//  Tasky
//
//  Created by Subodh Jena on 05/04/17.
//  Copyright © 2017 Subodh Jena. All rights reserved.
//

import Foundation
import Alamofire

final class APIManager {
    
    private init() {
        
    }
    
    static let sharedInstance: APIManager = APIManager()
    
    // MARK :- Authentication
    
    func authenticateUser(email: String, password: String, completionHandler: (APIResult<Auth>)) -> Void {
       
        var headers: HTTPHeaders = [:]
        if let authorizationHeader = Request.authorizationHeader(user: email, password: password) {
            headers[authorizationHeader.key] = authorizationHeader.value
        }
        
        let parameters: Parameters = ["access_token": API.masterKey]
    }
}

