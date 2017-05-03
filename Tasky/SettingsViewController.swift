//
//  SettingsViewController.swift
//  Tasky
//
//  Created by Subodh Jena on 03/05/17.
//  Copyright © 2017 Subodh Jena. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    var presenter: SettingsPresentationProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension SettingsViewController: SettingsViewProtocol {
    
}
