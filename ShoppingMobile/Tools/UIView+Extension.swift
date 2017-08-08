//
//  UIView+Extension.swift
//  ShoppingMobile
//
//  Created by stray s on 2017/8/5.
//  Copyright © 2017年 stray. All rights reserved.
//

import UIKit

extension UIView {

    /// X值
    var x: CGFloat {
        set {
            var rectValue = self.frame
            rectValue.origin.x = newValue
            self.frame = rectValue
        }
        
        get {
            return self.frame.origin.x
        }
    }
    /// Y值
    var y: CGFloat {
        set {
            var rectValue = self.frame
            rectValue.origin.y = newValue
            self.frame = rectValue
        }
        
        get {
            return self.frame.origin.y
        }
    }
    
    /// 宽度
    var width: CGFloat {
        set {
            var rectValue = self.frame
            rectValue.size.width = newValue
            self.frame = rectValue
        }
        
        get{
            return self.frame.size.width
        }
        
    }
    ///高度
    var height: CGFloat {
        set {
            var rectValue = self.frame
            rectValue.size.height = newValue
            self.frame = rectValue
        }
        
        get{
            return self.frame.size.height
        }
    }
    var size: CGSize {
        set {
            var rectValue = self.frame
            rectValue.size = newValue
            self.frame = rectValue
        }
        
        get{
            return self.frame.size
        }
    }
    
    
    var point: CGPoint {
        set {
            var rectValue = self.frame
            rectValue.origin = newValue
            self.frame = rectValue
        }
        
        get{
             return self.frame.origin
        }
       
    }
    
    var maxY: CGFloat {
        return self.frame.maxY
    }
    
    var maxX: CGFloat {
        return self.frame.maxX
    }
    
    
    
}
