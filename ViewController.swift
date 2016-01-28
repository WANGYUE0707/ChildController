//
//  ViewController.swift
//  父子控制器
//
//  Created by wangyue on 16/1/27.
//  Copyright © 2016年 wangyue. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // 正在显示的控制器
    var showingVC: UIViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let view = UIView(frame: CGRect(x: 0, y: 20, width: self.view.frame.size.width, height: 44))
        
        for i in 0..<3 {
            let btn = UIButton(frame: CGRect(x: view.frame.size.width / 3.0 * CGFloat(i), y: 0, width: view.bounds.width / 3.0, height: view.bounds.height))
            btn.backgroundColor = UIColor.grayColor()
            btn.setTitle("btn\(i)", forState: .Normal)
            btn.addTarget(self, action: "click:", forControlEvents: .TouchUpInside)
            view.addSubview(btn)
        }
        self.view.addSubview(view)
        
        // 通过addChildViewController,添加的控制器都会加载到childViewControllers这个数组里
        addChildViewController(OneTableViewController())
        addChildViewController(TwoViewController())
        addChildViewController(ThreeViewController())
    }

    func click(btn: UIButton) {
        
        // 先移除其他控制器的View,这样才能保证只有一个View被显示,而不是叠加在一起
        showingVC?.view.removeFromSuperview()
        
        // 获取索引
        let index = btn.superview?.subviews.indexOf(btn)
        
        // 改变当前控制器,并将view添加到主控制器
        showingVC = childViewControllers[index!]
        showingVC!.view.frame = CGRect(x: 0, y: 64, width: self.view.frame.size.width, height: self.view.frame.size.height - 64)
        self.view.addSubview((showingVC?.view)!)
    }

}

// 屏幕即将旋转时调用这个方法
extension ViewController {
    override func willRotateToInterfaceOrientation(toInterfaceOrientation: UIInterfaceOrientation, duration: NSTimeInterval) {
        debugPrint("\(self.classForCoder)willRotateToInterfaceOrientation")
    }
}

