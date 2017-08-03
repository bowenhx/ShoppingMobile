//
//  TabBarViewController.swift
//  ShoppingMobile
//
//  Created by stray s on 2017/8/1.
//  Copyright © 2017年 stray. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        UITabBarItem.appearance().setTitleTextAttributes([NSForegroundColorAttributeName: BaseColor.textGrayColor], for: .normal)
        UITabBarItem.appearance().setTitleTextAttributes([NSForegroundColorAttributeName: BaseColor.textRedColor], for: .selected)
        self.tabBarItem.setTitleTextAttributes([NSFontAttributeName: UIFont.systemFont(ofSize: 11)], for: .normal)
        
        
//        let normailImgs = ["首页拷贝","分类拷贝","商家店铺拷贝","购物车拷贝","我的拷贝"]
//        
//        let selectImgs = ["首页","分类","商家店铺","购物车","我的"]
//        
//        var i = 0
//        for item in self.toolbarItems! {
//            item.end
//            var image:UIImage = UIImage(named: normailImgs[i])!
//            
//            var selectedimage:UIImage = UIImage(named: selectImgs[i])!
//            
//            image = image.withRenderingMode(.alwaysOriginal)
//            
//            selectedimage = selectedimage.withRenderingMode(.alwaysOriginal)
//            
//            item.sel = selectedimage
//            
//            item.image = image
//            i += 1
//        }
    }

    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

   

}
