//
//  TasksModuleInterface.swift
//  Tasky
//
//  Created by Subodh Jena on 01/04/17.
//  Copyright © 2017 Subodh Jena. All rights reserved.
//

import Foundation

protocol TasksModuleInterface: class {
    
    func updateView()
    func showDetailsForTask(task: Task)
}
