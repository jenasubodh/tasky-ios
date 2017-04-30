//
//  TasksPresenter.swift
//  Tasky
//
//  Created by Subodh Jena on 30/04/17.
//  Copyright © 2017 Subodh Jena. All rights reserved.
//

import Foundation


class TasksPresenter : TasksPresentationProtocol
{
    var view: TasksViewProtocol?
    var interactor: TasksInteractorInput!
    var router: TasksWireframe!
    
    func viewDidLoad() {
        
    }
    
    func didClickSortButton() {
        
    }
    
    func didSelectTask(_ task: Task) {
        
    }
}

extension TasksPresenter : TasksInteractorOutput {
    
    func tasksFetched(tasks: [Task]) {
        
    }
    
    func articlesFetchFailed() {
        
    }
}
