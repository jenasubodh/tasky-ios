//
//  TasksInteractor.swift
//  Tasky
//
//  Created by Subodh Jena on 01/04/17.
//  Copyright © 2017 Subodh Jena. All rights reserved.
//

import Foundation
import Alamofire

class TasksInteractor: TasksInteractorInput {
    
    // Url to the desired API.
    let url = "https://tasky-api.herokuapp.com/tasks"
    
    // Reference to the Presenter's output interface.
    weak var output: TasksInteractorOutput!
    
    //MARK: - TasksInteractorInput
    
    func fetchTasks() {
        
        
        Alamofire.request(url).responseJSON { (response) in
            
            if response.result.value != nil {
                let tasks = response.result.value
                self.output.tasksFetched(tasks: tasks as! [Task])
            }
        }

    }
}
