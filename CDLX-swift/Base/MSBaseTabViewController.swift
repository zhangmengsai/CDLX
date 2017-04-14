//
//  MSBaseTabViewController.swift
//  CDLX-swift
//
//  Created by zhang on 2017/3/31.
//  Copyright © 2017年 zhang. All rights reserved.
//

import UIKit

class MSBaseTabViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        settingBase()
        
        confitUI()
    }
    // MARK: 统一设置
    fileprivate func settingBase() {
      
        let normalDic : NSMutableDictionary = [
            NSForegroundColorAttributeName : gray_color,
            NSFontAttributeName : UIFont.systemFont(ofSize: 10)
            
        ]
    UITabBarItem.appearance().setTitleTextAttributes(normalDic as? [String : Any], for:.normal )
        
        let selectDic : NSMutableDictionary = [
            NSForegroundColorAttributeName : orange_color,
            NSFontAttributeName : UIFont.systemFont(ofSize: 10)

        ]
        UITabBarItem.appearance().setTitleTextAttributes(selectDic as? [String : Any], for: .selected)
        
        
    
    }
    
    
     fileprivate  func confitUI() {
                
       setNavRootViewControll(VC: MSProductViewController(), title: "产品", normalImageName: "chanpinWhite", selectImageName: "chanpin")
        setNavRootViewControll(VC: MSContractViewController(), title: "合同", normalImageName: "icon_contract", selectImageName: "icon_contract_select")
        setNavRootViewControll(VC: MSOrderViewController(), title: "订单", normalImageName: "icon_order", selectImageName: "icon_order_select")
        setNavRootViewControll(VC: MSMyViewController(), title: "我的", normalImageName: "icon_my", selectImageName: "icon_my_select")

        
    }
    fileprivate func setNavRootViewControll(VC : MSBaseViewController,title : String, normalImageName : String ,selectImageName :String ){
    
        let normalImage = UIImage(named: normalImageName)?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        
        let selecrImage = UIImage(named: selectImageName)?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        VC.tabBarItem.title = title
        VC.tabBarItem.selectedImage=selecrImage
        VC.tabBarItem.image = normalImage
        VC.navigationItem.title=title
        VC.view.backgroundColor=UIColor.randomColor()
        
        let Nav : MSBaseNavViewController = MSBaseNavViewController(rootViewController:VC)
        
        self.addChildViewController(Nav)
        
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
