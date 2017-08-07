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
        
        let itemView = HomeItemView.getItemView()//init(frame: CGRect.init(x: 0, y: 255, width: Screen_W, height: 120), items: [0.0,1.0,2.0])
        itemView.frame = CGRect.init(x: 0, y: 0, width: 100, height: 100)
        itemView.layer.borderWidth = 1
        itemView.layer.borderColor = UIColor.red.cgColor
        self.addSubview(itemView)
        
    }
    
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
