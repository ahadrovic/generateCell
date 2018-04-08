//
//  CustomTableViewController.swift
//  generateCell
//
//  Created by Adem Hadrovic on 4/7/18.
//  Copyright © 2018 SSST. All rights reserved.
//

import UIKit

class CustomTableViewController:UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    var numberOfCells: Int = 0
    var cellsArray = [String]()
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numberOfCells
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell") as! customCellView
        cell.cellLabel.text = cellsArray[indexPath.row]
        return cell
    
    }
    
    
    @IBOutlet weak var titleLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        titleLabel.text = "You generated \(numberOfCells) cells"
        tableView.delegate = self;
        tableView.dataSource = self;
        
         var i = 0
         while i <= numberOfCells {
         cellsArray.append(String(i))
            i += 1
         }
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        /*
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell") as! customCellView
        */
        let cell = (sender as AnyObject).superview.unsafelyUnwrapped
        let label = cell.viewWithTag(1) as! UILabel
        let controller = segue.destination as? cellDetail
        controller?.numberLabelText = label.text!

        
    }
    
    
}
