//
//  SettingsPresenter.swift
//  Tasky
//
//  Created by Subodh Jena on 03/05/17.
//  Copyright © 2017 Subodh Jena. All rights reserved.
//

import Foundation

class SettingsPresenter : SettingsPresentationProtocol {
    
    weak var view: SettingsViewProtocol?
    var wireframe: SettingsWireFrame!
    
    func viewDidLoad() {
        
        // view?.showDetails(forTask: task)
    }
}
