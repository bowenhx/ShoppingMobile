//
//  RequestPlugin.swift
//  ShoppingMobile
//
//  Created by stray s on 2017/8/2.
//  Copyright © 2017年 stray. All rights reserved.
//

import UIKit
import Foundation
import MBProgressHUD
import Moya
import Result



let newworkActivityPlugin = NetworkActivityPlugin { (change) -> () in
    
    
    switch(change){
        
    case .ended:
        
        UIApplication.shared.isNetworkActivityIndicatorVisible = false
        
    case .began:
        
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
        
    }
}


public final class RequestLoadingPlugin: PluginType {
    private let viewController: UIViewController
    var HUD:MBProgressHUD
    var hide:Bool
    
    init(_ vc: UIViewController,_ hideView:Bool) {
        self.viewController = vc
        self.hide = hideView
        HUD = MBProgressHUD.init()
        guard self.hide else {
            
            return
        }
        HUD = MBProgressHUD.showAdded(to: self.viewController.view, animated: true)
        
    }
    
    public func willSend(_ request: RequestType, target: TargetType) {
        print("开始请求\(self.viewController)")
        
        if self.hide  != false  {
            
            HUD.mode = MBProgressHUDMode.indeterminate
            HUD.label.text = "加载中"
            HUD.bezelView.color = UIColor.lightGray
            
            HUD.removeFromSuperViewOnHide = true
            HUD.backgroundView.style = .solidColor //或SolidColor
            
        }
    }
    
    public func didReceive(_ result: Result<Response, MoyaError>, target: TargetType) {
        print("结束请求")
        HUD.hide(animated: true)
        
    }
    
}

//extension UIView {
//    
//    func showHUDActivityView(message: String, shade: Bool) {
//        let HUDView = MBProgressHUD.showAdded(to: self, animated: true)
//        HUDView.label.text = message
//        HUDView.mode = MBProgressHUDMode.customView
//        HUDView.alpha = 0.8
//        HUDView.tag = HUDTAG
//        HUDView.backgroundView.style = .solidColor
//        HUDView.removeFromSuperViewOnHide = true
//    }
//
//    func removeHUDActivity() {
////        let hubView = self.viewWithTag(HUDTAG)
//        
//           }
//    
//}
