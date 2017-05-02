//
//  TaskRouter.swift
//  Tasky
//
//  Created by Subodh Jena on 02/05/17.
//  Copyright © 2017 Subodh Jena. All rights reserved.
//

import Foundation
import UIKit

class TaskRouter: TaskWireFrame {
    
    static func assembleModule(_ task: Task) -> UIViewController {
       
        let view = R.storyboard.task.taskViewController()
        let presenter = TaskPresenter()
        
        view?.presenter = presenter
        
        presenter.view = view
        presenter.task = task
        
        return view!
    }
}
