//
//  MainViewController.swift
//  MicroChat
//
//  Created by 王娜 on 2018/4/18.
//  Copyright © 2018年 王娜. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        addChildViewControllers()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

// MARK: - 设置界面

extension MainViewController {

    func addChildViewControllers() {
        UITabBar.appearance().tintColor = UIColor.orange
        addChildViewController(controller: HomeTableViewController(), title: "首页", imageName: "toolBar_3")
    }

    /// 添加控制器
    private func addChildViewController(controller: UIViewController, title: String, imageName: String) {
        controller.title = title
        controller.tabBarItem.image = UIImage(named: imageName)
        let nav = UINavigationController(rootViewController: controller)
        addChildViewController(nav)
    }
}
