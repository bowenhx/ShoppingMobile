//
//  MBProgressHUD+Add.swift
//  ShoppingMobile
//
//  Created by stray s on 2017/8/4.
//  Copyright © 2017年 stray. All rights reserved.
//

import UIKit
import MBProgressHUD

let hudTag = 10240


extension UIView {
    func showViewTitle(title: String) {
        let hudView = MBProgressHUD.init(view: self)
        hudView.mode = .text
       
        self.addSubview(hudView)
        hudView.show(animated: true)
        
        if title.characters.count > 11 {
            hudView.detailsLabel.text = title
            hudView.hide(animated: true, afterDelay: 2.0)
        } else {
            hudView.label.text = title
            hudView.hide(animated: true, afterDelay: 1.0)
        }
    }
    
    
    func showViewActivity(title: String) {
        let hudView = MBProgressHUD.showAdded(to: self, animated: true)
        hudView.label.text = title
        hudView.tag = hudTag
        hudView.removeFromSuperViewOnHide = true
        hudView.mode = .indeterminate
    }
    
    func hiddenActivity() {
        let hudView: MBProgressHUD = self.viewWithTag(hudTag) as! MBProgressHUD
        hudView.removeFromSuperview()
    }
    
}
