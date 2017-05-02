//
//  TasksViewController.swift
//  Tasky
//
//  Created by Subodh Jena on 3/20/17.
//  Copyright © 2017 Subodh Jena. All rights reserved.
//

import UIKit

class TasksViewController: UIViewController {

    var presenter: TasksPresentationProtocol!
    
    // MARK: - Private Declarations
    
    var tasks : [Task] = [] {
        didSet {
            tableView.reloadData()
        }
    }
    
    // MARK: - IBOutlets
    
    @IBOutlet var barButtonAdd: UIBarButtonItem!
    @IBOutlet var barButtonEdit: UIBarButtonItem!
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - View Controller Overrides
    
    override func viewDidLoad() {
       
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 60.0
        
        self.navigationItem.leftBarButtonItem = barButtonEdit
        self.navigationItem.rightBarButtonItem = barButtonAdd
        
        if(!isLoggedIn()) {
            startLogin()
        }
        else {
            presenter.viewDidLoad()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Private Functions
    
    private func isLoggedIn() -> Bool {
        
        if Utilities.getAuthKey() != nil {
            return true
        }
        
        return false
    }
    
    private func startLogin() {
        
        let loginViewController: UIViewController = UIStoryboard(resource: R.storyboard.authentication).instantiateViewController(withIdentifier: "Authentication")
        
        self.present(loginViewController, animated: true, completion: nil)
    }
    
    // MARK: - IBAction
    
    @IBAction func didTapAdd(_ sender: Any) {
        
        let task = Task()
        self.presenter.router.presentDetails(forTask: task)
    }
    
    @IBAction func didTapEdit(_ sender: Any) {
        
    }
}

extension TasksViewController: TasksViewProtocol {
    
    func showNoContentScreen() {
        
    }
    
    func showTasksData(tasks: [Task]) {
        self.tasks = tasks
    }
}

extension TasksViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TaskTableViewCell") as! TaskTableViewCell
        let task = tasks[indexPath.row]
        
        cell.selectionStyle = .none
        cell.setUpCell(task: task)
        
        return cell
    }
}

extension TasksViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter.didSelectTask(tasks[indexPath.row])
    }
}

