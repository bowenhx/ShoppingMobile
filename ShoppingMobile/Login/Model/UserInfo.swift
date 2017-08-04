//
//  UserInfo.swift
//  ShoppingMobile
//
//  Created by stray s on 2017/8/3.
//  Copyright © 2017年 stray. All rights reserved.
//

import UIKit
import SwiftyUserDefaults


struct KEYGather {
    static let userInfoKey = "USERINFOKEY"
    
    static let userIDKey = "USERIDKEY"
    
    static let userTokenKey = "USERTOKENKEY"
    
    
    
    
    
    
}


class UserInfo: NSObject {
    
    static let sharedInstance = UserInfo()
    
    var username: String?
    var userToken: String?
    
    func setDictionary(dictionary: [String: Any], key: String) {
        Defaults[key] = dictionary
    }
    
    func getDictionary(key: String) -> [String: Any] {
        return Defaults[key].dictionaryValue
    }
    
    func setArray(array: [Any], key: String) {
        Defaults[key] = array
    }
    
    func getArray(key: String) -> [Any] {
        return Defaults[key].arrayValue
    }
    
}
