//
//  TwoViewController.swift
//  父子控制器
//
//  Created by wangyue on 16/1/27.
//  Copyright © 2016年 wangyue. All rights reserved.
//

import UIKit

class TwoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.yellowColor()
    }

  
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        let testVC = TestViewController()
        presentViewController(testVC, animated: true, completion: nil)
    }
    
}
