//
//  HomeItemView.swift
//  ShoppingMobile
//
//  Created by stray s on 2017/8/7.
//  Copyright © 2017年 stray. All rights reserved.
//

import UIKit

class HomeItemView: UIView {

    var itemBtn: UIButton!
    
    var itemTitle: UILabel!
    

    init(frame: CGRect,text: String) {
        super.init(frame: frame)
        itemBtn = UIButton.init(type: .custom)
        itemBtn.frame = CGRect.init(x: 0, y: 0, width: self.width, height: self.height - 20)
        self.addSubview(itemBtn)
        
        itemTitle = UILabel.init(frame: CGRect.init(x: 0, y: self.height - 20, width: self.width, height: 20))
        itemTitle.text = text
        itemTitle.font = UIFont.systemFont(ofSize: 14)
        itemTitle.textAlignment = .center
        self.addSubview(itemTitle)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}
