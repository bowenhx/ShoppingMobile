//
//  SAlertController.swift
//  SAlertControllerDemo
//
//  Created by stray s on 2017/7/18.
//  Copyright © 2017年 Stray. All rights reserved.
//

import UIKit


//使用构建者模式来创建一个AlertController


class SAlertController: NSObject {
    
   
    private var params : BuilderParams?
    
    init(params: BuilderParams) {
        super.init()
        self.params = params
    }
    
    
    func showAlertController() {
        let alert = UIAlertController.init(title: self.params?.title, message: self.params?.message, preferredStyle: UIAlertControllerStyle.alert)
        
        if (self.params?.confirmTitle) != nil {
            alert.addAction(UIAlertAction.init(title: self.params?.confirmTitle, style: UIAlertActionStyle.destructive, handler: self.params?.confirmHandler))
        }
        
        if (self.params?.cancelTitle) != nil {
            alert.addAction(UIAlertAction.init(title: self.params?.cancelTitle, style: UIAlertActionStyle.cancel, handler: self.params?.cancelHandler))
        }
        
        
        self.params?.context?.present(alert, animated: true, completion: nil)
        
    }
    
    
    class BuilderParams: NSObject {
        var context : UIViewController?
        
        //标题
        var title : String?
        
        //信息
        var message : String?
        
        //确定
        var confirmTitle : String?
        //取消
        var cancelTitle : String?
        
        var confirmHandler: ((UIAlertAction) -> Swift.Void)?
        
        var cancelHandler: ((UIAlertAction) -> Swift.Void)?
        
        init(_ context: UIViewController) {
            super.init()
            self.context = context
        }
        
    }
    
    
    //构建事件，链式编程去构建
    class BuilderAction: NSObject {
        
        var params : BuilderParams?
        
        init(context: UIViewController) {
            super.init()
            self.params = BuilderParams(context)
        }
        
        
        func setTittle(_ title: String) -> BuilderAction {
            self.params?.title = title
            return self
        }
        
        func setMessage(_ message: String) -> BuilderAction {
            self.params?.message = message
            return self
        }
        
        func setConfirmTitle(_ confirmTitle :String) -> BuilderAction {
            self.params?.confirmTitle = confirmTitle
            return self
        }
        
        func setCancelTitle(_ cancelTitle: String) -> BuilderAction {
            self.params?.cancelTitle = cancelTitle
            return self
        }
        
        
        func setConfirmHandler(_ confirmHandler: ((UIAlertAction) -> Swift.Void)? = nil) -> BuilderAction {
            self.params?.confirmHandler = confirmHandler
            return self
        }
        
        
        func setCancelHandler(_ cancelHandler: ((UIAlertAction) -> Swift.Void)? = nil) -> BuilderAction {
            self.params?.cancelHandler = cancelHandler
            return self
        }
        
        
        func builderAlert() -> SAlertController {
            return SAlertController(params: self.params!)
        }
        
        
    }
    
    

}
