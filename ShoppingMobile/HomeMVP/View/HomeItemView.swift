//
//  HomeItemView.swift
//  ShoppingMobile
//
//  Created by stray s on 2017/8/7.
//  Copyright © 2017年 stray. All rights reserved.
//

import UIKit

class HomeItemView: UIView {

    @IBOutlet weak var itemBtn: UIButton!
    
    @IBOutlet weak var itemTitle: UILabel!
    
    class func getItemView() -> HomeItemView{
        return (Bundle.main.loadNibNamed("HomeItemView", owner: nil, options: nil)?.last as? HomeItemView)!
    }
    
    
    

}
