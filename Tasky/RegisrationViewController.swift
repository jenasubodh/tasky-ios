//
//  RegisrationViewController.swift
//  Tasky
//
//  Created by Subodh Jena on 02/04/17.
//  Copyright © 2017 Subodh Jena. All rights reserved.
//

import UIKit

class RegisrationViewController: UIViewController {

    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtConfirmPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }

    @IBAction func didTapRegister(_ sender: Any) {
        
    }
}
