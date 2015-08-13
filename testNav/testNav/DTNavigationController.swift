//
//  DTNavigationController.swift
//  testNav
//
//  Created by wealon on 15/7/14.
//  Copyright (c) 2015年 xxtao. All rights reserved.
//

import UIKit

class DTNavigationController: UINavigationController {
    
    
    override func pushViewController(viewController: UIViewController, animated: Bool) {
        // 1. push 的时候添加返回按钮
        super.pushViewController(viewController, animated: animated)
        
        let leftBackButton = DTNavagationBtn(image: UIImage(named: "navigationbar_back"),
                                        selImage: UIImage(named: "navigationbar_back_highlighted"),
                                        target: self,
                                        action: "back")
        
        viewController.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: leftBackButton)
        
        
    }
    
    ///  返回动作的统一处理
    func back() {
        println("DTNavigationController---back---")
        self.popViewControllerAnimated(true)
    }
    
    
    override func popViewControllerAnimated(animated: Bool) -> UIViewController? {
        return super.popViewControllerAnimated(animated)
    }
   
}
