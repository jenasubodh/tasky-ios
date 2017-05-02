//
//  RootRouter.swift
//  Tasky
//
//  Created by Subodh Jena on 02/05/17.
//  Copyright © 2017 Subodh Jena. All rights reserved.
//

import Foundation
import UIKit

class RootRouter: RootProtocol {
    
    func presentTasksScreen(in window: UIWindow) {
        window.makeKeyAndVisible()
        window.rootViewController = TasksRouter.assembleModule()
    }
}
