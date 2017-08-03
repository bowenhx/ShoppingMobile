//
//  LoginViewController.swift
//  ShoppingMobile
//
//  Created by stray s on 2017/8/3.
//  Copyright © 2017年 stray. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    
    @IBOutlet weak var textPhoneField: UITextField!
    
    @IBOutlet weak var textPasswordField: UITextField!
    
    @IBOutlet weak var signUpBtn: UIButton!
    @IBOutlet weak var findPasswrodBtn: UIButton!
    @IBOutlet weak var registerBtn: UIButton!
    
    @IBOutlet weak var lineLabel: UILabel!
    @IBOutlet weak var lineLabel2: UILabel!
    @IBOutlet weak var lineLabel3: UILabel!
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var textLabel2: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setItemViewColor()
        
    }
    
    func setItemViewColor() {
        signUpBtn.setButtonBgColor()
        
        findPasswrodBtn.setTitleColor(BaseColor.textGrayColor, for: .normal)
        registerBtn.setTitleColor(BaseColor.textGrayColor, for: .normal)
        
        lineLabel.backgroundColor = BaseColor.lineGrayColor
        lineLabel2.backgroundColor = BaseColor.lineGrayColor
        lineLabel3.backgroundColor = BaseColor.textGrayColor
        
        textLabel.textColor = BaseColor.textGrayColor
        textLabel2.textColor = BaseColor.textGrayColor
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    

   

}
