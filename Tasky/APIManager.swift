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
    
    func authenticateUser(email: String, password: String, completionHandler: @escaping (APIResult<Auth>) -> Void) {
       
        var headers: HTTPHeaders = [:]
        if let authorizationHeader = Request.authorizationHeader(user: email, password: password) {
            headers[authorizationHeader.key] = authorizationHeader.value
        }
        
        let parameters: Parameters = ["access_token": API.masterKey]
        
        manager.apiRequest(Endpoints.Auth.Login(), parameters: parameters as [String : AnyObject], headers: headers).responseJSON { response in
            
            switch response.result {
            case .success(let json):
                let authJSON = JSON(json)
                let auth = Auth(json: authJSON)
                completionHandler(APIResult{ return auth })
            case .failure(let error):
                completionHandler(APIResult{ throw error })
            }
            
        }
    }
}

