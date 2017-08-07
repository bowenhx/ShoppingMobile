//
//  HomeFactoryView.swift
//  ShoppingMobile
//
//  Created by stray s on 2017/8/7.
//  Copyright © 2017年 stray. All rights reserved.
//

import UIKit

class HomeFactoryView: UIView,LoopImageViewDelegate {
    var loopPage: LoopImageView!
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        headLoopItemViews(images: [UIImage.init(named: "image4")!])
        
        headItemViews()
        
    }
    
    func headLoopItemViews(images: [UIImage]) {
        loopPage = LoopImageView(
            frame: CGRect.init(x: 0, y: 64, width: self.frame.size.width, height: 190), images: images)
        loopPage.delegate = self
        loopPage.pageIndicatorColor = UIColor.gray   //设置pageControl指示器的颜色
        loopPage.currentPageIndicatorColor = UIColor.black
        loopPage.pageControlPosion = .RightBottom    //设置pageControl的位置
        
        self.addSubview(loopPage!)
        loopPage.rollingEnable = true //开启自动滚动功能
    }
    
    func headItemViews() {
        
        let homeItem = HomeFitItemView.init(frame: CGRect.init(x: 0, y: 255, width: Screen_W, height: 200))
        homeItem.layer.borderWidth = 1
        homeItem.layer.borderColor = UIColor.blue.cgColor
        self.addSubview(homeItem)
        
    }
    
    
    //MAKE : LoopImageViewDelegate代理方法 点击page时调用
    func didSelectPage(pageNum: Int) {
        print("\(pageNum)")
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
