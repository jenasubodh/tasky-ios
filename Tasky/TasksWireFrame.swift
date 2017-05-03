//
//  TasksWireFrame.swift
//  Tasky
//
//  Created by Subodh Jena on 30/04/17.
//  Copyright © 2017 Subodh Jena. All rights reserved.
//

import Foundation
import UIKit

protocol TasksWireframe: class {
   
    weak var viewController: UIViewController? { get set }
    
    func presentSortOptions(sortCompletion: ((TasksSortType) -> ())?)
    func presentDetails(forTask task: Task)
    func presentSettings()
    
    static func assembleModule() -> UIViewController
}
