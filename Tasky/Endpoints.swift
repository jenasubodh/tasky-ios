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
    
    enum Tasks: Endpoint {
        
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
