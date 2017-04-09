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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func didTapLogin(_ sender: Any) {
        
        let email = txtEmail.text!
        let password = txtPassword.text!
        
        
        APIManager.sharedInstance.authenticateUser(email: email, password: password) { (result) in
            do {
                let auth = try result.unwrap()
                print(auth.toParameters())
            }
            catch let error as NSError {
                debugPrint("Get user error: \(error.localizedDescription)")
            }
        }
    }
}
