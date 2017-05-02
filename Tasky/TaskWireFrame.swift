//
//  TaskWireFrame.swift
//  Tasky
//
//  Created by Subodh Jena on 02/05/17.
//  Copyright © 2017 Subodh Jena. All rights reserved.
//

import UIKit

protocol TaskWireFrame: class {
    static func assembleModule(_ task: Task) -> UIViewController
}
