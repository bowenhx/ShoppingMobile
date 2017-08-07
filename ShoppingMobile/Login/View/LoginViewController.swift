//
//  LoginViewController.swift
//  ShoppingMobile
//
//  Created by stray s on 2017/8/3.
//  Copyright © 2017年 stray. All rights reserved.
//

import UIKit

typealias LoginSuccessBlock = () -> Void

class LoginViewController: BaseViewController,UITextFieldDelegate{

    
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
    
    
    var block: LoginSuccessBlock?
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        
    }
    
    
    @IBAction func loginAction(_ sender: UIButton) {
//        if textPhoneField.text?.characters.count == 0 {
//            self.view.showViewTitle(title: TextString.TextLoginPhone)
//            return
//        }
//        
//        if (textPasswordField.text?.characters.count)! == 0 {
//            self.view.showViewTitle(title: TextString.TextLoginPassword)
//            return
//        }
//        
//        if (textPhoneField.text?.textValidateMobile())! {
//            
//        } else {
//            self.view.showViewTitle(title: TextString.TextLoginPhoneError)
//            return
//        }
//        
//        print(textPhoneField.text ?? "手机号", textPasswordField.text ?? "密码")
        
        self.view.showViewActivity(title: TextString.TextLoding)
        
        self.perform(#selector(afterAction), with: nil, afterDelay: 1)
        
        
    }
    
    
    //自动登录或者记忆密码
    @IBAction func selectAutoWithMemoryAction(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        
       
        
    }
    
    func afterAction()  {
        self.view.hiddenActivity()
        
//        UserInfo.sharedInstance.setDictionary(dictionary: ["username":"15502928374","password":"123432"], key: KEYGather.userInfoKey)
        
       
        block!()
        
    }
    
    //找回密码或者立即注册
    @IBAction func didFindPasswrodWithRegistAction(_ sender: UIButton) {
        if sender.titleLabel?.text == "找回密码" {
            print("找回密码action")
            BaseViewController.pushNavTitle(title: "找回密码", className: "SetingPasswordViewController", fromVC: self)
        } else {
            BaseViewController.pushFromWithNavController(className: "RegistViewController", fromVC: self)
        }
        
    }
    
    
    
    
    
    
    override func setNewView() {
        view.backgroundColor = UIColor.white
        signUpBtn.updataRedBackgroundImage()
        
        findPasswrodBtn.setTitleColor(BaseColor.textGrayColor, for: .normal)
        registerBtn.setTitleColor(BaseColor.textGrayColor, for: .normal)
        
        lineLabel.backgroundColor = BaseColor.lineGrayColor
        lineLabel2.backgroundColor = BaseColor.lineGrayColor
        lineLabel3.backgroundColor = BaseColor.textGrayColor
        
        textLabel.textColor = BaseColor.textGrayColor
        textLabel2.textColor = BaseColor.textGrayColor
        
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        textPhoneField.resignFirstResponder()
        textPasswordField.resignFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    

   

}
