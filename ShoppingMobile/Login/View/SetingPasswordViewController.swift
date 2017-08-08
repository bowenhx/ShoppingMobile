//
//  SetingPasswordViewController.swift
//  ShoppingMobile
//
//  Created by stray s on 2017/8/6.
//  Copyright © 2017年 stray. All rights reserved.
//

import UIKit

class SetingPasswordViewController: BaseTableViewController {


    @IBOutlet var footerView: UIView!
    
    @IBOutlet weak var footerBtn: UIButton!
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = false
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    override func setNewView() {
        self.tableView.register(UINib.init(nibName: "SetingTableViewCell", bundle: nil), forCellReuseIdentifier: "setCell")
        self.tableView.separatorStyle = .none
        self.tableView.backgroundColor = UIColor.clear
        self.tableView.isScrollEnabled = false
        self.tableView.tableFooterView = self.footerView
        self.footerView.backgroundColor = BaseColor.viewColor
        
        
        footerBtn.updataRedBackgroundImage()
    }
    
    override func setNewData() {
        self.datasource?.setArray([["绑定手机号","请输入手机号码"],["验证码","请输入验证码"],["新密码","请输入密码（4-20字符）"],["确认新密码","请再次输入密码"]])
        
        
        self.tableView.reloadData()
    }
    
    
    @IBAction func selectConfirmAction(_ sender: UIButton) {
        
        
    }
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return (self.datasource?.count)!
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "setCell", for: indexPath) as? SetingTableViewCell
        cell?.loadDataCell(array: self.datasource!, indexPath: indexPath as NSIndexPath)
        cell?.selectionStyle = .none

        return cell!
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 10
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        if section == 3 {
            return 50
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let view = UIView()
        view.backgroundColor = BaseColor.viewColor
        return view
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   

}
