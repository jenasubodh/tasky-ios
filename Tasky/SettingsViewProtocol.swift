//
//  SettingsViewProtocol.swift
//  Tasky
//
//  Created by Subodh Jena on 03/05/17.
//  Copyright © 2017 Subodh Jena. All rights reserved.
//

import Foundation

protocol SettingsViewProtocol: class {
    
    var presenter: SettingsPresentationProtocol! { get set }
}
