//
//  UserInfo.swift
//  ShoppingMobile
//
//  Created by stray s on 2017/8/3.
//  Copyright © 2017年 stray. All rights reserved.
//

import UIKit

class UserInfo: NSObject {
    
    static let sharedInstance = UserInfo()
    
    var username: String?
    var userToken: String?
    
}
