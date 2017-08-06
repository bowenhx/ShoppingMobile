//
//  ClassifyViewController.swift
//  ShoppingMobile
//
//  Created by stray s on 2017/8/2.
//  Copyright © 2017年 stray. All rights reserved.
//

import UIKit

class ClassifyViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    override func setNewView() {
        let searchView = CustomSearchView.getSearchView()
        searchView.labMessageNumber.text = "3"
        self.navigationController?.navigationBar.addSubview(searchView)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   

}
