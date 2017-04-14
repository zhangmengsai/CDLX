//
//  MSMyViewController.swift
//  CDLX-swift
//
//  Created by zhang on 2017/4/1.
//  Copyright © 2017年 zhang. All rights reserved.
//

import UIKit


class MSMyViewController: MSBaseViewController,UITableViewDelegate,UITableViewDataSource {

    
    fileprivate lazy var BackView : UIView = {[weak self] in
    
        let Btnview = UIView(frame: CGRect(x: 0, y: 0, width: kScreenW, height: 100))
        
        //  Btnview.backgroundColor = UIColor.red
        
        let Btn = UIButton(frame: CGRect(x: 10, y: 60, width: kScreenW-20, height: 40))
        Btn.backgroundColor=UIColor.purple
        Btn.setTitle("退出", for: .normal)
        
        
        Btn.addTarget(self, action:#selector(BACK), for: .touchUpInside)
        
        
        Btnview.addSubview(Btn)
        
          return Btnview
    }()
    
    public lazy var tableview : UITableView = {[weak self] in
    
        var table = UITableView(frame: UIScreen.main.bounds, style:.grouped)
        
        table.delegate = self

        table.dataSource = self
        
        table.backgroundColor=UIColor.orange
        
        table.register(UINib(nibName: "MSMyImageTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        
        return table
        }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
          view.addSubview(tableview)
        
          tableview.tableFooterView = BackView
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 1
        case 1:
            return 1
        case 2:
            return 3
        case 3:
            return 1
        default:
            return 0
        }

    }

    

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
             return cell!
            
        }else {
        let identify = "swiftCEll"
        
        var cell = tableView.dequeueReusableCell(withIdentifier: identify)
        if cell == nil{
            cell = UITableViewCell.init(style: UITableViewCellStyle.default, reuseIdentifier: identify)
            cell?.accessoryType = .disclosureIndicator
            cell?.selectionStyle = .none
        }
        cell?.textLabel?.text=String(format: "%ld", indexPath.row)
        return cell!;
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {return 140}
        return 44
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 4
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
       return 4
    }

    


}

extension MSMyViewController {

    @objc fileprivate func BACK() {
       MSLog(message: "退出")
    }
 
}
