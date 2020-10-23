//
//  ViewController.swift
//  First_Project
//
//  Created by Abu Bakar on 10/23/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var myProfileLabel: UILabel!
    
    @IBOutlet weak var tableView: UITableView!
    
    let labelsArray     = tableViewData.labelArray
    let buttonTexts     = tableViewData.buttonText
    let titles          = tableViewData.titleArray
    let sub             = tableViewData.subtitleArray
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
     
//        
//        nameLabel.setLineSpacing()
//        detailLabel.setLineSpacing()
//        myProfileLabel.setLineSpacing()
      
    }


}



