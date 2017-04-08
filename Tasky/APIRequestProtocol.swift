//
//  APIRequestProtocol.swift
//  Tasky
//
//  Created by Subodh Jena on 08/04/17.
//  Copyright © 2017 Subodh Jena. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

protocol APIRequestProtocol {
    func apiResponse(_ completionHandler: (DataResponse<JSON>) -> Void) -> Self
}
