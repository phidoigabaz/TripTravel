//
//  ViewExtension.swift
//  imuzik
//
//  Created by Admin on 3/10/17.
//  Copyright © 2017 Huy Nguyen. All rights reserved.
//

import Foundation
import UIKit
import MBProgressHUD

extension UIView {

    class func nibDefault() -> UINib {
        let nibName = String(describing: self)
        let nib = UINib.init(nibName: nibName, bundle: nil)
        return nib
    }
    
    class func classString() -> String! {
        let str = String(describing: self)
        return str
    }
    
    func applyShadowView(width: CGFloat, height: CGFloat) {
        let shadowPath = UIBezierPath(roundedRect: self.bounds, cornerRadius: 14.0)
        self.layer.masksToBounds = false
        self.layer.shadowRadius = 14.0
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOffset = CGSize(width: width, height: height)
        self.layer.shadowOpacity = 0.15
        self.layer.shadowPath = shadowPath.cgPath
    }
    
    func addBlackGradientLayerInForeground(frame: CGRect, colors:[UIColor]){
        let gradient = CAGradientLayer()
        gradient.frame = frame
        gradient.colors = colors.map{$0.cgColor}
        self.layer.addSublayer(gradient)
    }
    // For insert layer in background
    func addColorGradientLayerInBackground(frame: CGRect, colors:[UIColor], alpha: CGFloat){
        let gradient = CAGradientLayer()
        gradient.frame = frame
        gradient.colors = colors.map{$0.cgColor}
        self.alpha = alpha
        self.layer.insertSublayer(gradient, at: 0)
    }
    
    func addshadowColor(color: UIColor) {
        let shadowPath = UIBezierPath(roundedRect: self.bounds, cornerRadius: 5)
        self.layer.masksToBounds = false
        self.layer.shadowRadius = 10
        self.layer.shadowColor = color.cgColor
        self.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        self.layer.shadowOpacity = 0.15
        self.layer.shadowPath = shadowPath.cgPath
    }
    
    func animateTrasitionToRight(_ placeNearView: UIView) {
        let transition = CATransition()
        transition.type = CATransitionType.push
        transition.subtype = CATransitionSubtype.fromRight
        placeNearView.layer.add(transition, forKey: nil)
        self.addSubview(placeNearView)
    }
    
    func showHud() {
        MBProgressHUD.hide(for: self, animated: true)
        let hud = MBProgressHUD.showAdded(to: self, animated: true)
        hud.mode = .annularDeterminate
        hud.minShowTime = 2
        hud.label.text = "Loading"
    }
    
    func hideHude() {
        MBProgressHUD.hide(for: self, animated: true)
    }
    
    func bindFrameToSuperviewBounds() {
        guard let superview = self.superview else {
            print("Error! `superview` was nil – call `addSubview(view: UIView)` before calling `bindFrameToSuperviewBounds()` to fix this.")
            return
        }
        self.translatesAutoresizingMaskIntoConstraints = false
        superview.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-0-[subview]-0-|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["subview": self]))
        superview.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-0-[subview]-0-|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["subview": self]))
    }
    /// take screen shot from this view
    func takeSnapshot() -> UIImage {
        UIGraphicsBeginImageContextWithOptions(bounds.size, false, UIScreen.main.scale)
        drawHierarchy(in: self.bounds, afterScreenUpdates: true)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image!
    }
}
