//
//  HomeViewController.swift
//  ShoppingMobile
//
//  Created by stray s on 2017/8/2.
//  Copyright © 2017年 stray. All rights reserved.
//

import UIKit
import Foundation

class HomeViewController: BaseViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    override func setNewView() {
        let searchView = CustomSearchView.getSearchView()
        
       self.navigationController?.navigationBar.addSubview(searchView)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    
    
  
}
