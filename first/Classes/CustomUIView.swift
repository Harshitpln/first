//
//  CustomUIView.swift
//  Pods
//
//  Created by Lokesh on 27/02/17.
//
//
//
import Foundation
import UIKit
@IBDesignable
public class customview: UIView
{
    
    // PARAM :- - view radious changer
    
    @IBInspectable var radious: Float32 = 0.0
        {
        didSet {
            self.layer.cornerRadius = CGFloat(radious)
        }
    }
    
    // PARAM :-  - View cornerradious change at spefic angle of view
    
    @IBInspectable var cornersteter: Float32 = 0.0
    @IBInspectable var borderradiousseter: Float32 = 0.0
        {
        didSet{
            self.roundCorners(corners: UIRectCorner(rawValue: UInt(cornersteter)), radius: CGFloat(borderradiousseter))
        }
    }
    
    // PARAM :- Functions
    
    func roundCorners(corners:UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        self.layer.mask = mask
    }
    
}



