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
    var homeItem: HomeFitItemView!
    var everyView: EveryDayPaperView!
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        //初始化轮播广告
        headLoopItemViews(images: [UIImage.init(named: "image4")!])
        
        //设置head item
        headItemViews()
        
        //每日快报条幅
        everyDayPaperView()
        
        
        
    }
    
    func headLoopItemViews(images: [UIImage]) {
        loopPage = LoopImageView(frame: CGRect.init(x: 0, y: 64, width: self.frame.size.width, height: 190), images: images)
        loopPage.delegate = self
        loopPage.pageIndicatorColor = UIColor.gray   //设置pageControl指示器的颜色
        loopPage.currentPageIndicatorColor = UIColor.black
        loopPage.pageControlPosion = .RightBottom    //设置pageControl的位置
        
        self.addSubview(loopPage!)
        loopPage.rollingEnable = true //开启自动滚动功能
    }
    
    
    
    func headItemViews() {
        homeItem = HomeFitItemView.init(frame: CGRect.init(x: 0, y: 255, width: Screen_W, height: 200))
        homeItem.layer.borderWidth = 1
        homeItem.layer.borderColor = UIColor.blue.cgColor
        self.addSubview(homeItem)
        
    }
    
    
    func everyDayPaperView() {
        everyView = EveryDayPaperView.init(frame: CGRect.init(x: 0, y: homeItem.maxY, width: Screen_W, height: 30))
        self.addSubview(everyView)
    }
    
    
    //MAKE : LoopImageViewDelegate代理方法 点击page时调用
    func didSelectPage(pageNum: Int) {
        print("\(pageNum)")
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

class EveryDayPaperView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        addItemView()
    }
    
    func addItemView() {
        let titleLabel = UILabel.init(frame: CGRect.init(x: 16, y: 0, width: 30, height: 30))
        titleLabel.text = "每日"
        titleLabel.font = UIFont.systemFont(ofSize: 14)
        titleLabel.textAlignment = .center
        titleLabel.textColor = BaseColor.textBlockColor
        self.addSubview(titleLabel)
        
        
        let paperLabel = UILabel.init(frame: CGRect.init(x: titleLabel.maxX, y: 5, width: 35, height: 20))
        paperLabel.textColor = UIColor.white
        paperLabel.font = UIFont.systemFont(ofSize: 14)
        paperLabel.text = "快报"
        paperLabel.textAlignment = .center
        paperLabel.backgroundColor = UIColor.red
        self.addSubview(paperLabel)
        paperLabel.layer.cornerRadius = 4
        paperLabel.layer.masksToBounds = true
        
        let loopText = UILabel.init(frame: CGRect.init(x: paperLabel.maxX + 5, y: 0, width: Screen_W - 50, height: self.height))
        loopText.text = "这是一个测试"
        loopText.textAlignment = .center
        loopText.font = UIFont.systemFont(ofSize: 14)
        loopText.textColor = BaseColor.textGrayTintColor
        self.addSubview(loopText)
        
        
        let lineLabel = UILabel.init(frame: CGRect.init(x: Screen_W - 45, y: 5, width: 1, height: 20))
        lineLabel.backgroundColor = BaseColor.lineColor
        self.addSubview(lineLabel)
    
        
        let moreLabel = UILabel.init(frame: CGRect.init(x: Screen_W - 40, y: 0, width: 30, height: 30))
        moreLabel.text = "更多"
        moreLabel.font = UIFont.systemFont(ofSize: 14)
        moreLabel.textAlignment = .center
        moreLabel.textColor = BaseColor.textBlockColor
        self.addSubview(moreLabel)
        
        
        let paperButton = UIButton.init(type: .custom)
        paperButton.frame = CGRect.init(x: titleLabel.x, y: 0 , width: Screen_W , height: self.height)
        self.addSubview(paperButton)
        
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}


