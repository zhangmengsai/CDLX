//
//  MSCommon.swift
//  CDLX-swift
//
//  Created by zhang on 17/3/30.
//  Copyright © 2017年 zhang. All rights reserved.
//

import UIKit

let kStatusBarH : CGFloat = 20
let kNavigationBarH : CGFloat = 44
let kTabbarH : CGFloat = 44

let kScreenW = UIScreen.main.bounds.width
let kScreenH = UIScreen.main.bounds.height

let orange_color = UIColor.hexStringToColor("FF6600")
let black_color =  UIColor.hexStringToColor("4A4A4A")
let gray_color =  UIColor.hexStringToColor("9A9A9A")
let blue_color =  UIColor.hexStringToColor("4799FF")


//MARK: 打印

func MSLog<T> (message: T,fileName:String = #file,funcName:String = #function,lineNum:Int = #line) {
    
    #if DEBUG
        
        let file = (fileName as NSString).lastPathComponent;
        
        print("\(file):\(funcName):\(lineNum):\("打印内容"):\(message)")
        
    #endif
    
}
		
