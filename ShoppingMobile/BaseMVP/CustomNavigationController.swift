//
//  CustomNavigationController.swift
//  ShoppingMobile
//
//  Created by stray s on 2017/8/2.
//  Copyright © 2017年 stray. All rights reserved.
//

import UIKit

class CustomNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationBar.barTintColor = UIColor.white
        self.navigationBar.tintColor = UIColor.black
        self.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.red, NSFontAttributeName: UIFont.systemFont(ofSize: 18)]
    }

    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        /// 这时push进来的控制器viewController，不是第一个子控制器（不是根控制器）
        if viewControllers.count > 0 {
            // push 后隐藏 tabbar
            viewController.hidesBottomBarWhenPushed = true
            viewController.navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "home_arrow_left"), style: .plain, target: self, action: #selector(navigationBackClick))
            viewController.navigationItem.leftBarButtonItem?.imageInsets = UIEdgeInsetsMake(0, -5, 0, 5)
            self.interactivePopGestureRecognizer?.delegate = self as? UIGestureRecognizerDelegate
            
        }
        
        super.pushViewController(viewController, animated: true)
    }
    /// 返回按钮
    func navigationBackClick() {
        if ((self.navigationController != nil) || (self.presentedViewController != nil ) && self.childViewControllers.count == 1) {
            _ = dismiss(animated: true, completion: nil)
            
        }else{
            _ = popViewController(animated: true)
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}




