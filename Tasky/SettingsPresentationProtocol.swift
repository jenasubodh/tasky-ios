//
//  SettingsPresentationProtocol.swift
//  Tasky
//
//  Created by Subodh Jena on 03/05/17.
//  Copyright © 2017 Subodh Jena. All rights reserved.
//

import Foundation

protocol SettingsPresentationProtocol: class {
    
    weak var view: SettingsViewProtocol? { get set }
    
    func viewDidLoad()
}
