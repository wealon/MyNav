
//  testNav
//
//  Created by wealon on 15/7/14.
//  Copyright (c) 2015年 xxtao. All rights reserved.
//

import UIKit


class DTNavagationBtn: UIButton {

    /// use only this init, it's 'convenience' only to avoid overriding required inits
    convenience init(image: UIImage?, selImage: UIImage?, target:AnyObject?, action: Selector? ) {
        self.init()
        self.setBackgroundImage(image, forState: UIControlState.Normal)
        self.setBackgroundImage(selImage, forState: UIControlState.Highlighted)
        self.frame = CGRectMake(0, 0, 25, 25)
        
        self.addTarget(target, action: action!, forControlEvents: UIControlEvents.TouchDown)
    }
}
