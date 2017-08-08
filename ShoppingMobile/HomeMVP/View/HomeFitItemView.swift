//
//  HomeFitItemView.swift
//  ShoppingMobile
//
//  Created by stray s on 2017/8/8.
//  Copyright © 2017年 stray. All rights reserved.
//

import UIKit

class HomeFitItemView: UIView {

    //包装item views
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
        loadItemView(images: ["生活超市","全球购","服装配饰","美妆个户","箱包珠宝",
                            "母婴用品","家用电器","5倍广告豆","物流查询","会员特权"])
    }
    
    func loadItemView(images: [Any]) {
        
        //计算间距
        let itemCount = 5
        
        let spaceW  = (Screen_W / CGFloat(itemCount))
        
        var i = 0
        for value in images {
            let itemY = spaceW * CGFloat(i / itemCount) + 10
            let itemX = CGFloat(i % itemCount) * spaceW
            
            let itemView = HomeItemView.init(frame:  CGRect.init(x: itemX , y: itemY, width: spaceW, height: spaceW), text: value as! String)
            itemView.layer.borderWidth = 1
            self.addSubview(itemView)
            i += 1
        }
        
        
    }
//    int num = 2;//取整，
//    for (int i=0; i<arrData.count; i++) {
//    float itemX = screen_ItemX +  Item_W * (i % 2);
//    float itemY = Item_Height * (i / num);
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
