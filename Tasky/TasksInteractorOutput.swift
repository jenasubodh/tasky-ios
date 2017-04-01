//
//  TasksInteractorOutput.swift
//  Tasky
//
//  Created by Subodh Jena on 01/04/17.
//  Copyright © 2017 Subodh Jena. All rights reserved.
//

import Foundation

protocol TasksInteractorOutput: class {
    
    func tasksFetched(tasks: [Task])
}
