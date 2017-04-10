//
//  SessionManagerProtocol.swift
//  Tasky
//
//  Created by Subodh Jena on 09/04/17.
//  Copyright © 2017 Subodh Jena. All rights reserved.
//

import Foundation
import Alamofire

protocol SessionManagerProtocol {

    func apiRequest(endpoint: EndpointProtocol, parameters: [String : AnyObject]?, headers: [String : String]?) -> DataRequest
}
