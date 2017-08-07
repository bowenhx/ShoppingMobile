//
//  SetingTableViewCell.swift
//  ShoppingMobile
//
//  Created by stray s on 2017/8/6.
//  Copyright © 2017年 stray. All rights reserved.
//

import UIKit

class SetingTableViewCell: UITableViewCell {

    @IBOutlet weak var labText: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var btnVerify: UIButton!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        btnVerify.layer.borderColor = UIColor.red.cgColor
        btnVerify.layer.borderWidth = 1
        btnVerify.layer.masksToBounds = true
        btnVerify.layer.cornerRadius = 15
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
    
    func loadDataCell(array: NSMutableArray, indexPath: NSIndexPath) {
        let item = array[indexPath.section] as? [Any]
        labText.text = item?[0] as? String
        textField.placeholder = item?[1] as? String
        if indexPath.section > 0 {
            btnVerify.isHidden = true
        }
        
       
        
    }
    
    
    
}
