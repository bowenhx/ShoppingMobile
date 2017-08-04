//
//  String+Text.swift
//  ShoppingMobile
//
//  Created by stray s on 2017/8/4.
//  Copyright © 2017年 stray. All rights reserved.
//

import UIKit
import Foundation


extension String {
    /// 判断是否是手机号
    func textValidateMobile() -> Bool {
        let phoneRegex: String = "^((13[0-9])|(15[^4,\\D])|(18[0,0-9])|(17[0,0-9]))\\d{8}$"
        let phoneTest = NSPredicate(format: "SELF MATCHES %@", phoneRegex)
        return phoneTest.evaluate(with: self)
    }
    
    

}

struct  TextString {
    static let TextLoding = "正在加载..."
    
    static let TextLoginPhone = "请输入手机号"
    
    static let TextLoginPassword = "请输入密码"
    
    static let TextLoginPhoneError = "您输入的手机号错误"
    
    
}
