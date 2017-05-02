//
//  TasksViewProtocol.swift
//  Tasky
//
//  Created by Subodh Jena on 30/04/17.
//  Copyright © 2017 Subodh Jena. All rights reserved.
//

import Foundation


protocol TasksViewProtocol: IndicatableView {
    
    var presenter: TasksPresentationProtocol! { get set }
    
    func showTasksData(tasks: [Task])
    func showNoContentScreen()
}
