//
//  TasksPresentationProtocol.swift
//  Tasky
//
//  Created by Subodh Jena on 30/04/17.
//  Copyright © 2017 Subodh Jena. All rights reserved.
//

import Foundation

protocol TasksPresentationProtocol: class {
   
    weak var view: TasksViewProtocol? { get set }
    var interactor: TasksInteractorInput! { get set }
    var router: TasksWireframe! { get set }
    
    func viewDidLoad()
    func didClickSortButton()
    func didSelectTask(_ task: Task)
    func didSelectSettings()
}
