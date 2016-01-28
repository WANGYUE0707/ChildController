//
//  TestViewController.swift
//  父子控制器
//
//  Created by wangyue on 16/1/28.
//  Copyright © 2016年 wangyue. All rights reserved.
//

import UIKit

class TestViewController: UIViewController {

//    var test2: Test2ViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.blueColor()
        let test2 = Test2ViewController()
        test2.view.frame = CGRect(x: 10, y: 10, width: 100, height: 100)
//        self.test2 = test2
        view.addSubview(test2.view)
        addChildViewController(test2)
    }

 
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        debugPrint("TestViewController")
        dismissViewControllerAnimated(true, completion: nil)
    }
    
}
