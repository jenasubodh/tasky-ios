//
//  TaskViewController.swift
//  Tasky
//
//  Created by Subodh Jena on 3/24/17.
//  Copyright © 2017 Subodh Jena. All rights reserved.
//

import UIKit
import Eureka

class TaskViewController: FormViewController {
    
    // MARK: -  Form Tags
    
    let taskTitle = "taskTitle"
    let taskDateTime = "taskDateTime"
    let taskDescription = "taskDescription"
    
    @IBOutlet weak var barButtonSave: UIBarButtonItem!
    
    var presenter: TaskPresentationProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUpView()
        self.presenter.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: - View Setup
    
    private func setUpView(){
        
        form +++ Section("Task")
            <<< TextRow(){ row in
                row.title = "Title"
                row.tag = taskTitle
                row.placeholder = "Task Title"
            }
            <<< DateTimeInlineRow() {
                $0.title = "When"
                $0.tag = taskDateTime
                $0.value = Date()
            }
            
        form +++ Section("Details")
            <<< TextAreaRow(){
                $0.title = "Description"
                $0.tag = taskDescription
                $0.textAreaHeight = TextAreaHeight.dynamic(initialTextViewHeight: 90)
                $0.placeholder = "Task Description"
            }
    }
    
    // MARK: - IBActions
    
    @IBAction func didTapSave(_ sender: Any) {
        
        let valuesDictionary = form.values()
        print(valuesDictionary)
    }
}

extension TaskViewController: TaskViewProtocol {
    
    func showDetails(forTask task: Task){
        
        let titleRow: TextRow? = form.rowBy(tag: taskTitle)
        titleRow?.value = task.title
        
        let descriptionRow: TextAreaRow? = form.rowBy(tag: taskDescription)
        descriptionRow?.value = task.description
    }
}
