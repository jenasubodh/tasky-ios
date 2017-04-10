//
//  Endpoints.swift
//  Tasky
//
//  Created by Subodh Jena on 04/04/17.
//  Copyright © 2017 Subodh Jena. All rights reserved.
//

import Foundation
import Alamofire

enum Endpoints {
    
    enum Auth: EndpointProtocol {
        
        case Login()
        
        var method: HTTPMethod {
            switch self {
            case .Login:
                return .post
            }
        }
        
        public var path: String {
            switch self {
            case .Login:
                return "auth"
            }
        }
        
        var url: String {
            
            let baseUrl = API.baseUrl
            
            switch self {
            case .Login:
                return "\(baseUrl)\(path)"
            }
        }
    }
    
    enum Users: EndpointProtocol {
        
        case GetUsers()
        case GetUser(userId: String)
        case CreateUser()
        case UpdateUser(userId: String)
        case DeleteUser(userId: String)
        
        var method: HTTPMethod {
            switch self {
            case .GetUsers:
                return .get
            case .GetUser:
                return .get
            case .CreateUser:
                return .post
            case .UpdateUser:
                return .put
            case .DeleteUser:
                return .delete
            }
        }
        
        public var path: String {
            switch self {
            case .GetUsers:
                return "users"
            case .GetUser(let userId):
                return "users/\(userId)"
            case .CreateUser:
                return "users"
            case .UpdateUser(let userId):
                return "users/\(userId)"
            case .DeleteUser(let userId):
                return "users/\(userId)"
            }
        }
        
        var url: String {
            
            let baseUrl = API.baseUrl
            
            switch self {
            case .GetUsers:
                return "\(baseUrl)\(path)"
            case .GetUser:
                return "\(baseUrl)\(path)"
            case .CreateUser:
                return "\(baseUrl)\(path)"
            case .UpdateUser:
                return "\(baseUrl)\(path)"
            case .DeleteUser:
                return "\(baseUrl)\(path)"
            }
        }
    }
    
    enum Tasks: EndpointProtocol {
        
        case GetTasks()
        case GetTask(taskId: String)
        case CreateTask()
        case UpdateTask(taskId: String)
        case DeleteTask(taskId: String)
        
        var method: HTTPMethod {
            switch self {
            case .GetTasks:
                return .get
            case .GetTask:
                return .get
            case .CreateTask:
                return .post
            case .UpdateTask:
                return .put
            case .DeleteTask:
                return .delete
            }
        }
        
        public var path: String {
            switch self {
            case .GetTasks:
                return "tasks"
            case .GetTask(let taskId):
                return "tasks/\(taskId)"
            case .CreateTask:
                return "tasks"
            case .UpdateTask(let taskId):
                return "tasks/\(taskId)"
            case .DeleteTask(let taskId):
                return "tasks/\(taskId)"
            }
        }
        
        var url: String {
            
            let baseUrl = API.baseUrl
            
            switch self {
            case .GetTasks:
                return "\(baseUrl)\(path)"
            case .GetTask:
                return "\(baseUrl)\(path)"
            case .CreateTask:
                return "\(baseUrl)\(path)"
            case .UpdateTask:
                return "\(baseUrl)\(path)"
            case .DeleteTask:
                return "\(baseUrl)\(path)"
            }
        }
    }
}
