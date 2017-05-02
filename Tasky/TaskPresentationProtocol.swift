//
//  TaskPresentationProtocol.swift
//  Tasky
//
//  Created by Subodh Jena on 02/05/17.
//  Copyright © 2017 Subodh Jena. All rights reserved.
//

import Foundation


protocol TaskPresentationProtocol: class {
    
    weak var view: TaskViewProtocol? { get set }
    
    func viewDidLoad()
}
