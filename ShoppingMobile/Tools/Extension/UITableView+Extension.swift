//
//  UITableView+Extension.swift
//  ShoppingMobile
//
//  Created by stray s on 2017/8/2.
//  Copyright © 2017年 stray. All rights reserved.
//

import UIKit

extension UITableView {
    func hideTableFooterView() {
        self.tableFooterView = UIView(frame: .zero)
    }
}
