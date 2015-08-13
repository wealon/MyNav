//
//  SecondViewController.swift
//  testNav
//
//  Created by wealon on 15/7/14.
//  Copyright (c) 2015年 xxtao. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 设置RightItem
        self.setupRightButton()
        
    }
    
    func setupRightButton() {
        
        let rightButton = DTNavagationBtn(image: UIImage(named: "navigationbar_back_right"),
            selImage: UIImage(named: "navigationbar_back_right_highlighted"),
            target: self,
            action: "forward")
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(customView: rightButton)
    }
    
    func forward() {
        println("forward.....")
        let story = UIStoryboard(name: "ThreeViewController", bundle: nil)
        let threeVC = story.instantiateInitialViewController() as! ThreeViewController
        self.navigationController?.pushViewController(threeVC, animated: true)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
