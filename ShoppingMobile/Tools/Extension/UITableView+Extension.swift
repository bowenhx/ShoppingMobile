//
//  UITableView+Extension.swift
//  ShoppingMobile
//
//  Created by stray s on 2017/8/2.
//  Copyright © 2017年 stray. All rights reserved.
//

import UIKit
protocol TableViewFooterViewProtocol {
    func didSelectFooterButtonAction()
    
}


extension UITableView {
    func hideTableFooterView() {
        self.tableFooterView = UIView(frame: .zero)
    }
    
    func showTableFooterView(text: String) {
        let footerView = UIView.init(frame: CGRect.init(origin: .zero, size: CGSize.init(width: Screen_W, height: 44)))
        footerView.backgroundColor = UIColor.clear
        
        let footerBtn = UIButton.init(type: .custom)
        footerView.frame = CGRect.init(x: 20, y: 0, width: Screen_W - 40, height: 44)
        footerView.addSubview(footerBtn)
        
        footerBtn.addTarget(self, action: #selector(didFooterAction), for: .touchUpInside)
    }
    
    func didFooterAction() {
        
    }
    
    
}
