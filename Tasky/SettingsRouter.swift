//
//  SettingsRouter.swift
//  Tasky
//
//  Created by Subodh Jena on 03/05/17.
//  Copyright © 2017 Subodh Jena. All rights reserved.
//

import Foundation
import UIKit

class SettingsRouter: SettingsWireFrame {
    
    static func assembleModule() -> UIViewController {
        
        let view = R.storyboard.settings.settingsViewController()
        let presenter = SettingsPresenter()
        
        view?.presenter = presenter
        
        presenter.view = view
        
        return view!
    }
}
