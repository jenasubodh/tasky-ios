//
//  APIResult.swift
//  Tasky
//
//  Created by Subodh Jena on 07/04/17.
//  Copyright © 2017 Subodh Jena. All rights reserved.
//

import Foundation

enum APIResult<Value> {
    
    case success(value: Value)
    case failure(error: NSError)
    
    init(_ f: () throws -> Value) {
        do {
            let value = try f()
            self = .success(value: value)
        } catch let error as NSError {
            self = .failure(error: error)
        }
    }
    
    func unwrap() throws -> Value {
        switch self {
        case .success(let value):
            return value
        case .failure(let error):
            throw error
        }
    }
}

