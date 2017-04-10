//
//  LoginViewController.swift
//  Tasky
//
//  Created by Subodh Jena on 02/04/17.
//  Copyright © 2017 Subodh Jena. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
    
    // MARK: - IBActions
    
    @IBAction func didTapLogin(_ sender: Any) {
        
        let email = txtEmail.text!
        let password = txtPassword.text!
        
        
        APIManager.sharedInstance.authenticateUser(email: email, password: password) { (result) in
            do {
                let auth = try result.unwrap()
                
                Utilities.setAuthKey(authKey: auth.token!)
            
                // Dismiss Login
                self.dismissLogin()
            }
            catch let error as NSError {
                debugPrint("Get user error: \(error.localizedDescription)")
            }
        }
    }

    // MARK: - Private Functions
    
    private func dismissLogin()  {
        self.dismiss(animated: true, completion: nil)
    }
}
