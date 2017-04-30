//
//  TasksInteractorInput.swift
//  Tasky
//
//  Created by Subodh Jena on 30/04/17.
//  Copyright © 2017 Subodh Jena. All rights reserved.
//

import Foundation

protocol TasksInteractorInput: class {
    
    weak var output: TasksInteractorOutput! { get set }
    
    func fetchTasks()
}
