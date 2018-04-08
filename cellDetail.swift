//
//  cellDetail.swift
//  generateCell
//
//  Created by Adem Hadrovic on 4/7/18.
//  Copyright © 2018 SSST. All rights reserved.
//

import UIKit

class cellDetail :ViewController{
    
    var numberLabelText: String = ""
    @IBOutlet weak var numberLabel: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        numberLabel.text = numberLabelText
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}
