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
        btnVerify.layer.cornerRadius = 10
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
    
    func loadDataCell(array: [Any], indexPath: NSIndexPath) {
        labText.text = array[indexPath.section] as? String
        
        if indexPath.section > 0 {
            btnVerify.isHidden = true
        }
    }
    
    
    
}
