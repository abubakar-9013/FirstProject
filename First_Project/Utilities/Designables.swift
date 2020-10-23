//
//  Designables.swift
//  First_Project
//
//  Created by Abu Bakar on 10/23/20.
//

import Foundation
import UIKit

@IBDesignable
    final class viewClass:UIView {
    
    @IBInspectable
        var borderColor:UIColor = UIColor.clear {
        didSet {
            layer.borderColor = borderColor.cgColor
        }
    }
        
    @IBInspectable
        var cornerRadius:CGFloat = 0.0 {
            didSet {
                layer.cornerRadius = cornerRadius
            }
        }
    
    @IBInspectable
        var borderWidth:CGFloat = 0.0 {
            didSet {
                layer.borderWidth = borderWidth
            }
        }
        
    @IBInspectable
        var shadowOffset:CGSize = .zero {
            didSet {
                layer.shadowOffset = shadowOffset
            }
        }
    
    @IBInspectable
        var shadowColor:UIColor = UIColor.clear {
                didSet {
                    layer.shadowColor = shadowColor.cgColor
                }
            }
        
    @IBInspectable
            var shadowRadius:CGFloat = 0.0 {
                didSet {
                    layer.shadowRadius = shadowRadius
                }
            }
     
    @IBInspectable
            var shadowOpacity:Float = 0.0 {
                didSet {
                    layer.shadowOpacity = shadowOpacity
                }
            }
        
    }
