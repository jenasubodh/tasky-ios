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
    
    // MARK :- Tasks
    
    func createTask(authToken: String, task: Task, completionHandler: @escaping (APIResult<Task>) -> Void) {
        
        let headers: HTTPHeaders = ["access_token": API.masterKey]
        let parameters: Parameters = task.toParameters()
        
        manager.apiRequest(Endpoints.Tasks.CreateTask(), parameters: parameters as [String : AnyObject], headers: headers).responseJSON { (response) in
            
            switch response.result {
            case .success(let json):
                let taskJSON = JSON(json)
                let task = Task(json: taskJSON)
                completionHandler(APIResult{ return task })
            case .failure(let error):
                completionHandler(APIResult{ throw error })
            }
        }
        
    }
    
    func getTasks(authToken: String, completionHandler: @escaping (APIResult<[Task]>) -> Void) {
        
        let headers: HTTPHeaders = ["access_token": API.masterKey]
        let parameters: Parameters = [:]
        
        manager.apiRequest(Endpoints.Tasks.GetTasks(), parameters: parameters as [String : AnyObject], headers: headers).responseJSON { (response) in
            
            switch response.result {
            case .success(let json):
                let tasks:[Task] = JSON(json).arrayValue.map({ (task) -> Task in
                    return Task(json: task)
                })
                completionHandler(APIResult{ return tasks })
            case .failure(let error):
                completionHandler(APIResult{ throw error })
            }
        }
    }
    
    func getTask(authToken: String, taskId: String, completionHandler: @escaping (APIResult<Task>) -> Void) {
        
        let headers: HTTPHeaders = ["access_token": API.masterKey]
        let parameters: Parameters = [:]
        
        manager.apiRequest(Endpoints.Tasks.GetTask(taskId: taskId), parameters: parameters as [String : AnyObject], headers: headers).responseJSON { (response) in
            
            switch response.result {
            case .success(let json):
                let taskJSON = JSON(json)
                let task = Task(json: taskJSON)
                completionHandler(APIResult{ return task })
            case .failure(let error):
                completionHandler(APIResult{ throw error })
            }
        }
    }
    
    func updateTask(authToken: String, task: Task, completionHandler: @escaping (APIResult<Task>) -> Void) {
        
        let headers: HTTPHeaders = ["access_token": API.masterKey]
        let parameters: Parameters = task.toParameters()
        
        manager.apiRequest(Endpoints.Tasks.UpdateTask(taskId: task.id!), parameters: parameters as [String : AnyObject], headers: headers).responseJSON { (response) in
            
            switch response.result {
            case .success(let json):
                let taskJSON = JSON(json)
                let task = Task(json: taskJSON)
                completionHandler(APIResult{ return task })
            case .failure(let error):
                completionHandler(APIResult{ throw error })
            }
        }
        
    }
    
    func deleteTask(authToken: String, taskId: String, completionHandler: @escaping (APIResult<Task>) -> Void) {
        
        let headers: HTTPHeaders = ["access_token": API.masterKey]
        let parameters: Parameters = [:]
        
        manager.apiRequest(Endpoints.Tasks.DeleteTask(taskId: taskId), parameters: parameters as [String : AnyObject], headers: headers).responseJSON { (response) in
            
            switch response.result {
            case .success(let json):
                let taskJSON = JSON(json)
                let task = Task(json: taskJSON)
                completionHandler(APIResult{ return task })
            case .failure(let error):
                completionHandler(APIResult{ throw error })
            }
        }
    }
}

