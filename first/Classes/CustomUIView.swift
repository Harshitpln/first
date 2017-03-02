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
    
    
    @IBInspectable var border: CGFloat = 0
        {
        didSet{
            self.layer.borderWidth = border
        }
        
     
            
    }
    
    
    @IBInspectable var borderColor: UIColor = UIColor.black
        {
        didSet{
            self.layer.borderColor = borderColor.cgColor
           // self.layer.masksToBounds = true
        }
            
    }
    
    
    @IBInspectable var gradiontcolor2: UIColor = UIColor.clear
    @IBInspectable var gradiontcolor1: UIColor = UIColor.clear
        {
        didSet{
            createGradientLayer(color1: gradiontcolor1 , color2: gradiontcolor2)
            
        }
        
    }
    
    // PARAM :- Functions
    
    func roundCorners(corners:UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        self.layer.mask = mask
        
    }
    
    
    
    func createGradientLayer(color1: UIColor, color2: UIColor) {
        
        var gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.layer.bounds

        gradientLayer.colors = [color1.cgColor, color2.cgColor]
        self.layer.addSublayer(gradientLayer)
     }
    
}










