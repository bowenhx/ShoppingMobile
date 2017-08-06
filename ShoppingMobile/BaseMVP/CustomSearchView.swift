//
//  CustomSearchView.swift
//  ShoppingMobile
//
//  Created by stray s on 2017/8/5.
//  Copyright © 2017年 stray. All rights reserved.
//

import UIKit

class CustomSearchView: UIView {
    
    @IBOutlet weak var btnSearch: UIButton!
    @IBOutlet weak var labMessageNumber: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        btnSearch.backgroundColor =  BaseColor.grayBgColor
        btnSearch.layer.masksToBounds = true
        btnSearch.layer.cornerRadius = 15
        self.width = Screen_W
        
        labMessageNumber.layer.masksToBounds = true
        labMessageNumber.layer.cornerRadius = 8
    }
    
    
    class func getSearchView() -> CustomSearchView {
        return Bundle.main.loadNibNamed("CustomSearchView", owner: nil, options: nil)?.first as! CustomSearchView
    }
    
    
    @IBAction func didSelectSearchAction(_ sender: UIButton) {
        
    }
    
    
    @IBAction func didServiceOrMessageAction(_ sender: UIButton) {
        if sender.tag == 100 {
            print("选择客户")
        }
        
    }

}
