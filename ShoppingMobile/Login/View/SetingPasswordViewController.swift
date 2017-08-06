//
//  SetingPasswordViewController.swift
//  ShoppingMobile
//
//  Created by stray s on 2017/8/6.
//  Copyright © 2017年 stray. All rights reserved.
//

import UIKit

class SetingPasswordViewController: BaseTableViewController {

    
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = false
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    
    
    }

    override func setNewView() {
        self.tableView.register(UINib.init(nibName: "SetingTableViewCell", bundle: nil), forCellReuseIdentifier: "setCell")
        self.tableView.separatorStyle = .none
       
    }
    
    override func setNewData() {
        self.datasource?.setArray(["绑定手机号","验证码","新密码","确认新密码"])
        self.tableView.reloadData()
    }
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return (self.datasource?.count)!
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "setCell", for: indexPath) as? SetingTableViewCell
        cell?.loadDataCell(array: self.datasource as! [Any], indexPath: indexPath as NSIndexPath)
        return cell!
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 10
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   

}
