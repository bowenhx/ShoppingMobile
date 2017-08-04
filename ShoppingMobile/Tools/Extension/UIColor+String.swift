//
//  ExString.swift
//  ShoppingMobile
//
//  Created by stray s on 2017/8/2.
//  Copyright © 2017年 stray. All rights reserved.
//

import UIKit

extension UIColor {
   
    class func HexColor(_ hexColor: Int32 ) -> UIColor {
        let r = CGFloat(((hexColor & 0x00FF0000) >> 16)) / 255.0
        let g = CGFloat(((hexColor & 0x0000FF00) >> 8)) / 255.0
        let b = CGFloat(hexColor & 0x000000FF) / 255.0
        
        return UIColor(red: r, green: g, blue: b, alpha: 1.0)
    }
    
    class func RGBColorWith(_ red : Int,green : Int, blue :Int) -> UIColor {
        return UIColor(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1)
    }
    
}


extension UIImage {
    
    class func imageWithColor(color: UIColor) -> UIImage {
        let rect = CGRect.init(origin: .zero, size: CGSize.init(width: 1.0, height: 1.0))
        UIGraphicsBeginImageContext(rect.size)
        let context = UIGraphicsGetCurrentContext()
        
        context?.setFillColor(color.cgColor)
        context?.fill(rect)
        
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image!
        
    }
}

extension UIButton {
    func setButtonBgColor() {
        let image = ColorImage.redGroundColor
        self.setBackgroundImage(image, for: .normal)
        self.layer.masksToBounds = true
        self.layer.cornerRadius = 22
    }
}


struct BaseColor {
    /**
     用于重要级段落文字信息 标题信息
     */
    static let BlackColor = UIColor.HexColor(0x000000)
    
    /**
     用于普通级段落文字 引导词
     */
    static let DarkGrayColor = UIColor.HexColor(0x343434)
    
    /**
     用于头部导航颜色(蓝色)
     */
    static let navBlueColor = UIColor.HexColor(0x00a8b5)
    
    
    /**
     用于界面背景颜色
     */
    static let BackGroundColor = UIColor.HexColor(0xefefef)
    
    
    
    static let btnGroundColor = UIColor.HexColor(0xffffff)
    
    
    //红色 颜色
    static let textRedColor = UIColor.HexColor(0xf82222)
    
    //灰色
    static let textGrayColor = UIColor.HexColor(0x979797)
    static let textTintGrayColor = UIColor.HexColor(0xcccccc)
    
    //线条颜色
    static let lineGrayColor = UIColor.HexColor(0xe8e8e8)
    
    static let ReadColor = UIColor.RGBColorWith(120, green: 223, blue: 124)

}

struct ColorImage {
    //红色图片
    static let redGroundColor = UIImage.imageWithColor(color: UIColor.red)
    
    
    
}
