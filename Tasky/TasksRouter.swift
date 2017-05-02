//
//  TasksRouter.swift
//  Tasky
//
//  Created by Subodh Jena on 30/04/17.
//  Copyright © 2017 Subodh Jena. All rights reserved.
//

import Foundation
import UIKit

class TasksRouter : NSObject, TasksWireframe {
    
    weak var viewController: UIViewController?
    private(set) var sortCompletion: ((TasksSortType) -> ())?
    
    static func assembleModule() -> UIViewController {
     
        let view = R.storyboard.tasks().instantiateViewController(withIdentifier: "TasksViewController") as! TasksViewController
        
        let presenter = TasksPresenter()
        let interactor = TasksInteractor()
        let router = TasksRouter()
        
        let navigation = UINavigationController(rootViewController: view)
        
        view.presenter = presenter
        
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        
        interactor.output = presenter
        
        router.viewController = view
        
        return navigation
    }
    
    func presentSortOptions(sortCompletion: ((TasksSortType) -> ())?) {
        self.sortCompletion = sortCompletion
        
        let alert = UIAlertController(
            title: "Some Sorting",
            message: nil,
            preferredStyle: .actionSheet
        )
        
        viewController?.present(alert, animated: true, completion: nil)
    }
    
    func presentDetails(forTask task: Task) {
        
        let taskEditorViewController = TaskRouter.assembleModule(task)
        viewController?.navigationController?.pushViewController(taskEditorViewController, animated: true)
    }
}
