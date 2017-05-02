//
//  TaskPresenter.swift
//  Tasky
//
//  Created by Subodh Jena on 02/05/17.
//  Copyright © 2017 Subodh Jena. All rights reserved.
//

import Foundation

class TaskPresenter : TaskPresentationProtocol {
    
    weak var view: TaskViewProtocol?
    var wireframe: TaskWireFrame!
    var task: Task!
    
    func viewDidLoad() {
        view?.showDetails(forTask: task)
    }
}
