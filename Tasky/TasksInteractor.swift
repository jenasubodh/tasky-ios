//
//  TasksInteractor.swift
//  Tasky
//
//  Created by Subodh Jena on 30/04/17.
//  Copyright © 2017 Subodh Jena. All rights reserved.
//

import Foundation

class TasksInteractor: TasksInteractorInput {
    
    weak var output: TasksInteractorOutput!
    
    func fetchTasks() {
        APIManager.sharedInstance.getTasks(authToken: Utilities.getAuthKey()!) { (result) in
            do {
                let tasks = try result.unwrap()
                self.output.tasksFetched(tasks: tasks)
            }
            catch let error as NSError {
                debugPrint("Get user error: \(error.localizedDescription)")
                self.output.articlesFetchFailed()
            }
        }
    }
}
