//
//  ViewController.swift
//  generateCell
//
//  Created by Adem Hadrovic on 4/7/18.
//  Copyright © 2018 SSST. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textInput: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let number = Int(textInput.text!)!
        let controller = segue.destination as? CustomTableViewController
        controller?.numberOfCells = number
        /*
        var i = 1
        while i < number {
            controller?.cellsArray.append(String(i))
            i += 1
        }
         */
    }


}

