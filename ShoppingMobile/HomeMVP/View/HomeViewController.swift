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
        
        let factoryView = HomeFactoryView.init(frame: CGRect.init(x: 0, y: 0, width: Screen_W, height: Screen_H))
        factoryView.layer.borderWidth = 1
        factoryView.layer.borderColor = UIColor.green.cgColor
        self.view.addSubview(factoryView)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    
    
  
}
