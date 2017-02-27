//
//  LetsTextField.swift
//  Pods
//
//  Created by Lokesh on 27/02/17.
//
//

import Foundation
import UIKit
@IBDesignable
public class LetsTextField: UITextField {
    var bottomView: UIView?
    var topView: UIView?
    @IBInspectable var borderWidth: CGFloat = 0.0 {
        didSet {
            borderSetup()
        }
    }
    @IBInspectable var borderColor: UIColor = UIColor.black {
        didSet {
            borderSetup()
        }
    }
    func borderSetup() {
        layer.borderColor = borderColor.cgColor
        layer.borderWidth = borderWidth
        layer.masksToBounds = true
    }
    @IBInspectable var bottomBorderHeight: CGFloat = 0.0 {
        didSet {
            bottomViewSetup()
        }
    }
    @IBInspectable var bottomBorderColor: UIColor = UIColor.black {
        didSet {
            bottomViewSetup()
        }
    }
    func bottomViewSetup() {
        if bottomView == nil {
            bottomView = UIView(frame: self.bounds)
            addSubview(bottomView!)
        }
        else {
            
        }
        var frm = self.bounds
        frm.size.height = bottomBorderHeight
        frm.origin.y = self.frame.size.height - bottomBorderHeight
        bottomView?.frame = frm
        bottomView?.backgroundColor = bottomBorderColor
    }
    
    @IBInspectable var topBorderHeight: CGFloat = 0.0 {
        didSet {
            topViewSetup()
        }
    }
    @IBInspectable var topBorderColor: UIColor = UIColor.black {
        didSet {
            topViewSetup()
        }
    }
    func topViewSetup() {
        if topView == nil {
            topView = UIView(frame: self.bounds)
            addSubview(topView!)
        }
        else {
            
        }
        var frm = self.bounds
        frm.size.height = topBorderHeight
        frm.origin.y = 0
        topView?.frame = frm
        topView?.backgroundColor = topBorderColor
    }
    
    public override func layoutSubviews() {
        super.layoutSubviews()
        bottomViewSetup()
        topViewSetup()
    }
}

