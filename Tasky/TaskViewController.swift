//
//  TaskViewController.swift
//  Tasky
//
//  Created by Subodh Jena on 3/24/17.
//  Copyright © 2017 Subodh Jena. All rights reserved.
//

import UIKit

class TaskViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setLeftNavigationBarButton()
        setRightNavigationBarButton()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

    }
   
    
    // MARK: - Bar Buttons
    
    fileprivate func setLeftNavigationBarButton() {
        
        let btnClose = UIButton(type: .custom)
        btnClose.setImage(UIImage(named: "close"), for: .normal)
        btnClose.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        btnClose.addTarget(self, action: #selector(TaskViewController.didTapLeftNavigationBarButton), for: .touchUpInside)
        let button = UIBarButtonItem(customView: btnClose)
        
        self.navigationItem.leftBarButtonItem = button
    }
    
    open func didTapLeftNavigationBarButton() {
        self.dismiss(animated: true, completion: nil)
    }
    
    fileprivate func setRightNavigationBarButton() {
        
        let btnSave = UIButton(type: .custom)
        btnSave.setImage(UIImage(named: "save"), for: .normal)
        btnSave.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        btnSave.addTarget(self, action: #selector(TaskViewController.didTapRightNavigationBarButton), for: .touchUpInside)
        let button = UIBarButtonItem(customView: btnSave)
        
        self.navigationItem.rightBarButtonItem = button
    }
    
    open func didTapRightNavigationBarButton() {
        self.dismiss(animated: true, completion: nil)
    }
}
