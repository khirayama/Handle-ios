//
//  TaskCellTableViewCell.swift
//  Handle-ios
//
//  Created by  Hirayama.Kotaro on 2017/03/10.
//  Copyright © 2017 com.cloud.handle. All rights reserved.
//

import UIKit

class TaskTableViewCell: UITableViewCell {
    
    @IBOutlet weak var taskLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
