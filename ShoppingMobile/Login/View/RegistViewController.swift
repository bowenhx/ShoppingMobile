//
//  RegistViewController.swift
//  ShoppingMobile
//
//  Created by stray s on 2017/8/5.
//  Copyright © 2017年 stray. All rights reserved.
//

import UIKit

class RegistViewController: BaseViewController {
    
    @IBOutlet weak var textPhoneField: UITextField!
    @IBOutlet weak var textVerifyField: UITextField!
    @IBOutlet weak var textNumberField: UITextField!
    @IBOutlet weak var textPasswordField: UITextField!
    
    @IBOutlet weak var btnVerify: UIButton!
    @IBOutlet weak var btnRegister: UIButton!
    
    @IBOutlet weak var btnUserProtocol: UIButton!
    @IBOutlet weak var btnTraderProtocol: UIButton!
    
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = false
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "注册"
    
        
        
        
    }
    
    
    override func setNewView() {
        btnVerify.updataBackgroundImage(color: BaseColor.redTintColor)
        btnRegister.updataRedBackgroundImage()
        
        for i in 10 ..< 14 {
            let iView = self.view.viewWithTag(i) as? UILabel
            iView?.backgroundColor = BaseColor.lineGrayColor
        }
        
        if Screen_W == 320 {
            textVerifyField.placeholder = "验证码"
        }
    }
    
    
    //获取验证码
    @IBAction func getPhoneVerifyNumberAction(_ sender: UIButton) {
        
        
    }
   
    
    @IBAction func selectPawWithProtocolStatus(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        
        if sender.tag == 20 {
            textPasswordField.isSecureTextEntry = !sender.isSelected
        }
        
    }
    
    
    //注册
    @IBAction func beginRegistAction(_ sender: UIButton) {
        
        
    }
    
    
    //点击用户协议事件
    @IBAction func userProtocolAction(_ sender: UIButton) {
        
    }
    
    
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        textPhoneField.resignFirstResponder()
        textVerifyField.resignFirstResponder()
        textNumberField.resignFirstResponder()
        textPasswordField.resignFirstResponder()
    }

    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
}
