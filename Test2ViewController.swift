//
//  Test2ViewController.swift
//  父子控制器
//
//  Created by wangyue on 16/1/28.
//  Copyright © 2016年 wangyue. All rights reserved.
//

import UIKit

class Test2ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.greenColor()
        
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        debugPrint("Test2ViewController")
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    

}
