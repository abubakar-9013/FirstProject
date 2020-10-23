//
//  secondTableViewCell.swift
//  First_Project
//
//  Created by Abu Bakar on 10/24/20.
//

import UIKit

class secondTableViewCell: UITableViewCell {
    
    @IBOutlet weak var mainView: viewClass!
    @IBOutlet weak var smallView: UIView!
    @IBOutlet weak var rightView: UIView!
    @IBOutlet weak var rightImage: UIImageView!
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.textLabel?.frame = CGRect(x: 56, y: 38, width: self.frame.width, height: 16)
        self.detailTextLabel?.frame = CGRect(x: 56, y: 56, width: self.frame.width, height: 16)
        self.imageView?.frame = CGRect(x: 16, y: 37, width: 32, height: 32)
        
        
        mainView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            mainView.leadingAnchor.constraint(equalTo:self.leadingAnchor),
            mainView.topAnchor.constraint(equalTo: smallView.bottomAnchor),
            mainView.widthAnchor.constraint(equalToConstant: 302),
            mainView.heightAnchor.constraint(equalToConstant: 65)
        
        ])
        
        self.contentView.bringSubviewToFront(textLabel!)
        self.contentView.bringSubviewToFront(detailTextLabel!)
        
    }

}
