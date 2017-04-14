//
//  ViewController.swift
//  CDLX-swift
//
//  Created by zhang on 17/3/30.
//  Copyright © 2017年 zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ImageArr = ["AD_7","AD_1","AD_2" ,"AD_3","AD_4","AD_5","AD_6"]

    fileprivate lazy var imageView : UIImageView = {
    
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: kScreenW , height: kScreenH))

        return imageView
    }()
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let delay = DispatchTime.now() + .seconds(1)
    
        DispatchQueue.main.asyncAfter(deadline: delay) {

        let window = UIApplication.shared.keyWindow
            window?.rootViewController=MSBaseTabViewController()

            
            
            
        }

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
       setUI()
        
    
    }
    func setUI () {
    
        imageView.image=UIImage(named: getImageName())
        view .addSubview(imageView)
        
        
    }

// MARK: 获取当前的时间 年月日
    func getImageName() -> (String) {
        
        let nowData : NSDate = NSDate()
        let calendar = NSCalendar.current
        let com = calendar.dateComponents([.year,.month,.weekday], from: nowData as Date)
        return ImageArr[com.weekday!-1]
        
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

