//
//  Gradients.swift
//  First_Project
//
//  Created by Abu Bakar on 10/24/20.
//

import Foundation
import UIKit

enum Gradients {
    static func pinkGradient (View:UIView) {
        
            let gradientLayer = CAGradientLayer()
            gradientLayer.colors = [UIColor(red: 246/255, green: 40/255, blue: 89/255, alpha: 1).cgColor,UIColor(red: 247/255, green: 72/255, blue: 172/255, alpha: 1).cgColor]
            gradientLayer.startPoint = CGPoint(x: 0, y: 0.5)
            gradientLayer.endPoint = CGPoint(x: 1, y:0.5 )
            gradientLayer.locations = [0.0,0.6,1]
            gradientLayer.frame = View.bounds
            
            let viewLabel = UIView.init(frame: View.frame)
        //View.addSubview(viewLabel)
            viewLabel.backgroundColor = UIColor.clear
            viewLabel.addSubview(View)
            viewLabel.layer.insertSublayer(gradientLayer, at: 0)
        
    }
}
