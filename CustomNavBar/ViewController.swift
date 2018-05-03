//
//  ViewController.swift
//  CustomNavBar
//
//  Created by 红鹊豆 on 2018/5/2.
//  Copyright © 2018年 薛国宾. All rights reserved.
//

import UIKit

class ViewController: UIViewController,CustomNavigationBar {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
//        createNavigationBar(title: "首页", leftShow: false, leftSel: nil, name: nil, rightSel: nil, whiteIcon: false)
        self.createNavigationBar(title: "首页")
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

