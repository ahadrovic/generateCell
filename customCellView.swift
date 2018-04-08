//
//  customCellView.swift
//  generateCell
//
//  Created by Adem Hadrovic on 4/7/18.
//  Copyright © 2018 SSST. All rights reserved.
//

import UIKit

class customCellView: UITableViewCell {
    
    @IBOutlet weak var cellLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}

