//
//  Extensions.swift
//  First_Project
//
//  Created by Abu Bakar on 10/23/20.
//

import Foundation
import UIKit

extension UILabel {

    func setLineSpacing(lineSpacing: CGFloat = 0.0, lineHeightMultiple: CGFloat = 0.0) {

        guard let labelText = self.text else { return }

        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = lineSpacing
        paragraphStyle.lineHeightMultiple = lineHeightMultiple

        let attributedString:NSMutableAttributedString
        if let labelattributedText = self.attributedText {
            attributedString = NSMutableAttributedString(attributedString: labelattributedText)
        } else {
            attributedString = NSMutableAttributedString(string: labelText)
        }

        attributedString.addAttribute(NSAttributedString.Key.paragraphStyle, value:paragraphStyle, range:NSMakeRange(0, attributedString.length))

        self.attributedText = attributedString
    }
    
}


extension ViewController:UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
               
        if indexPath.row >= 2 {
            
                let cell = tableView.dequeueReusableCell(withIdentifier: "secondTableCell") as! secondTableViewCell
                cell.textLabel?.text = titles[indexPath.row]
                cell.detailTextLabel?.text = sub[indexPath.row]
                cell.imageView?.image = UIImage(named: "\(indexPath.row)")
           
                cell.rightImage.image = UIImage(named: "checkboxCircleLine1")
            
                switch indexPath.row {
                    case 2:
                        cell.rightView.backgroundColor = UIColor(red: 247/255, green: 72/255, blue: 132/255, alpha: 1)
                        break
                    case 3:
                        cell.rightView.backgroundColor = UIColor(red: 71/255, green: 106/255, blue: 249/255, alpha: 1)
                        break
                    case 4:
                        cell.rightView.backgroundColor = UIColor(red: 237/255, green: 51/255, blue: 192/255, alpha: 1)
                        break
                    default:
                        cell.rightView.backgroundColor = .brown
            }
                    return cell
        }
        else
            {
                let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell") as! TableViewCell
                cell.cellLabelText.text = labelsArray[indexPath.row]
                cell.cellButtonLabel.text = buttonTexts[indexPath.row]
                cell.cellView.layer.cornerRadius = 7
                cell.cellView.layer.masksToBounds = true
                return cell
                                
        }
        
    }
    
  
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }
    
    
}



