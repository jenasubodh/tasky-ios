//
//  TasksViewController.swift
//  Tasky
//
//  Created by Subodh Jena on 3/20/17.
//  Copyright © 2017 Subodh Jena. All rights reserved.
//

import UIKit

class TasksViewController: UIViewController, TasksViewInterface{

    // MARK: - Private Declarations
    
    private var tasks : [Task] = []
    
    // MARK: - IBOutlets
    
    @IBOutlet var barButtonAdd: UIBarButtonItem!
    @IBOutlet var barButtonDone: UIBarButtonItem!
    @IBOutlet var barButtonDelete: UIBarButtonItem!
    @IBOutlet var barButtonEdit: UIBarButtonItem!
    @IBOutlet var barButtonCancel: UIBarButtonItem!
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - View Controller Overrides
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.leftBarButtonItem = barButtonEdit
        self.navigationItem.rightBarButtonItem = barButtonAdd
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     
    }
    
    // MARK: - Private Methods
    
    fileprivate func openTaskEditor() {
        let viewController:UIViewController = UIStoryboard(name: "Task", bundle: nil).instantiateViewController(withIdentifier: "Task")
        self.present(viewController, animated: true, completion: nil)
    }
    
    // MARK: - TasksViewInterface
    
    func showTasksData(tasks: [Task]) {
        self.tasks = tasks
        self.tableView.reloadData()
    }
    
    func showNoContentScreen() {
        // Show Epmty Content Screen
    }
    
    // MARK: - IBAction
    
    @IBAction func didTapAdd(_ sender: Any) {
        self.openTaskEditor()
    }
    
    @IBAction func didTapEdit(_ sender: Any) {
        
    }
    
    @IBAction func didTapDelete(_ sender: Any) {
        
    }
    
    @IBAction func didTapCancel(_ sender: Any) {
        
    }
    
    @IBAction func didTapDone(_ sender: Any) {
        
    }
}
