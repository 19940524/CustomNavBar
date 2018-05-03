//
//  SubViewController.swift
//  CustomNavBar
//
//  Created by 红鹊豆 on 2018/5/2.
//  Copyright © 2018年 薛国宾. All rights reserved.
//

import UIKit


class SubViewController: UIViewController,CustomNavigationBar {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        createReturnNavigationBar(title: "第二页", leftSel: #selector(backAction))
        
    }

    @objc func backAction() {
        self.navigationController?.popViewController(animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
