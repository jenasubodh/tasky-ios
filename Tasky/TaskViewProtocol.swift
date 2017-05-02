//
//  TaskViewProtocol.swift
//  Tasky
//
//  Created by Subodh Jena on 02/05/17.
//  Copyright © 2017 Subodh Jena. All rights reserved.
//

import Foundation

protocol TaskViewProtocol: class {
    
    var presenter: TaskPresentationProtocol! { get set }
    
    func showDetails(forTask task: Task)
}
