//
//  TasksPresenter.swift
//  Tasky
//
//  Created by Subodh Jena on 01/04/17.
//  Copyright © 2017 Subodh Jena. All rights reserved.
//

import Foundation

class TasksPresenter : TasksModuleInterface, TasksInteractorOutput
{
    // Reference to the View
    weak var view: TasksViewInterface!
    
    // Reference to the Interactor's interface.
    var interactor: TasksInteractorInput!
    
    // Reference to the Router
    var wireframe: TasksWireframe!
    
    
    //MARK: - TasksModuleInterface
    
    func updateView() {
        self.interactor.fetchTasks()
    }
    
    func showDetailsForTask(task: Task) {
        // self.wireframe.presentDetailsInterfaceForTask(task)
    }
    
    //MARK: - TasksInteractorOutput
    
    func tasksFetched(tasks: [Task]) {
        
        if(tasks.count > 0){
            self.view.showTasksData(tasks: tasks)
        }
        else{
            self.view.showNoContentScreen()
        }

    }
}
