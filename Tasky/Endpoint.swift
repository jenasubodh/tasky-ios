//
//  Endpoint.swift
//  Tasky
//
//  Created by Subodh Jena on 04/04/17.
//  Copyright © 2017 Subodh Jena. All rights reserved.
//

import Foundation
import Alamofire

protocol Endpoint {

    var path: String { get }
    var url: String { get }
    var method: HTTPMethod { get }
}
