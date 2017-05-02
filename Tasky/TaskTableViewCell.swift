//
//  TaskTableViewCell.swift
//  Tasky
//
//  Created by Subodh Jena on 02/05/17.
//  Copyright © 2017 Subodh Jena. All rights reserved.
//

import UIKit

class TaskTableViewCell: UITableViewCell {

    
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var labelDateTime: UILabel!
    @IBOutlet weak var labelDescription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setUpCell(task: Task)  {
        labelTitle.text = task.title
        labelDateTime.text = task.updatedAt
        labelDescription.text = task.description
    }
}
