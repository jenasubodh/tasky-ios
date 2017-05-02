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
    
    var tasks: [Task] = [] {
        didSet {
            if tasks.count > 0 {
                view?.showTasksData(tasks: tasks)
            } else {
                view?.showNoContentScreen()
            }
        }
    }
    
    func viewDidLoad() {
        interactor.fetchTasks()
    }
    
    func didClickSortButton() {
        interactor.fetchTasks()
    }
    
    func didSelectTask(_ task: Task) {
        router.presentDetails(forTask: task)
    }
}

extension TasksPresenter : TasksInteractorOutput {
    
    func tasksFetched(tasks: [Task]) {
        self.tasks = tasks
    }
    
    func articlesFetchFailed() {
        view?.showNoContentScreen()
    }
}
