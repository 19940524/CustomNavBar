//
//  UIViewController+CustomNavigationBar.swift
//  CustomNavBar
//
//  Created by 红鹊豆 on 2018/5/2.
//  Copyright © 2018年 薛国宾. All rights reserved.
//

import Foundation
import UIKit

protocol CustomNavigationBar { }

extension CustomNavigationBar where Self:UIViewController  {
    
    // @discardableResult  修饰符 未引用不会报错
    /// 创建导航栏
    ///
    /// - Returns: 导航栏视图
    @discardableResult private func createNavigationBar() -> ITNavigationBar {
        let navigationBar = ITNavigationBar()
        navigationBar.tag = 1000
        self.view.addSubview(navigationBar)
        return navigationBar
    }
    
    /// 创建一个只有标题的导航栏
    ///
    /// - Parameter title: 标题
    /// - Returns: 导航栏
    @discardableResult func createNavigationBar(title : String? = nil) -> ITNavigationBar {
        return self.createNavigationBar(title: title,
                                        leftTitle: nil,
                                        leftImage: nil,
                                        leftSel: nil,
                                        rightTitle: nil,
                                        rightImage: nil,
                                        rightSel: nil,
                                        isReturn: false,
                                        whiteIcon: false)
    }
    
    /// 创建一个有标题和只有左按钮标题无事件的导航栏
    ///
    /// - Parameters:
    ///   - title: 导航栏标题
    ///   - leftTitle: 左标题
    /// - Returns: 导航栏
    @discardableResult func createNavigationBar(title     : String?   = nil,
                                                leftTitle : String?) -> ITNavigationBar {
        return self.createNavigationBar(title: title,
                                        leftTitle: leftTitle,
                                        leftImage: nil,
                                        leftSel: nil,
                                        rightTitle: nil,
                                        rightImage: nil,
                                        rightSel: nil,
                                        isReturn: false,
                                        whiteIcon: false);
    }

    /// 创建一个有标题和只有左按钮标题与图片无事件的导航栏
    ///
    /// - Parameters:
    ///   - title: 导航栏标题
    ///   - leftTitle: 左标题
    ///   - leftImage: 左按钮图标
    /// - Returns: 导航栏
    @discardableResult func createNavigationBar(title       : String?   = nil,
                                                leftTitle   : String?,
                                                leftImage   : String?) -> ITNavigationBar {
        return self.createNavigationBar(title: title,
                                        leftTitle: leftTitle,
                                        leftImage: leftImage,
                                        leftSel: nil,
                                        rightTitle: nil,
                                        rightImage: nil,
                                        rightSel: nil,
                                        isReturn: false,
                                        whiteIcon: false)
    }

    /// 创建一个有标题和左按钮的导航栏
    ///
    /// - Parameters:
    ///   - title: 导航栏标题
    ///   - leftTitle: 左标题
    ///   - leftImage: 左按钮图标
    ///   - leftSel: 左按钮事件
    /// - Returns: 导航栏
    @discardableResult func createNavigationBar(title       : String?   = nil,
                                                leftTitle   : String?,
                                                leftImage   : String?,
                                                leftSel     : Selector) -> ITNavigationBar {
        return self.createNavigationBar(title: title,
                                        leftTitle: leftTitle,
                                        leftImage: leftImage,
                                        leftSel: leftSel,
                                        rightTitle: nil,
                                        rightImage: nil,
                                        rightSel: nil,
                                        isReturn: false,
                                        whiteIcon: false)
    }

    /// 创建一个有标题有左按钮和只有标题的右按钮的导航栏
    ///
    /// - Parameters:
    ///   - title: 导航栏标题
    ///   - leftTitle: 左标题
    ///   - leftImage: 左按钮图标
    ///   - leftSel: 左按钮事件
    ///   - rightTitle: 右标题
    /// - Returns: 导航栏
    @discardableResult func createNavigationBar(title       : String?   = nil,
                                                leftTitle   : String?,
                                                leftImage   : String?,
                                                leftSel     : Selector?,
                                                rightTitle  : String?) -> ITNavigationBar {
        return self.createNavigationBar(title: title,
                                        leftTitle: leftTitle,
                                        leftImage: leftImage,
                                        leftSel: leftSel,
                                        rightTitle: rightTitle,
                                        rightImage: nil,
                                        rightSel: nil,
                                        isReturn: false,
                                        whiteIcon: false)
    }

    /// 创建一个有标题有左按钮和只有标题和图片的右按钮的导航栏
    ///
    /// - Parameters:
    ///   - title: 导航栏标题
    ///   - leftTitle: 左标题
    ///   - leftImage: 左按钮图标
    ///   - leftSel: 左按钮事件
    ///   - rightTitle: 右标题
    ///   - rightImage: 右按钮图标
    /// - Returns: 导航栏
    @discardableResult func createNavigationBar(title       : String?   = nil,
                                                leftTitle   : String?,
                                                leftImage   : String?,
                                                leftSel     : Selector?,
                                                rightTitle  : String?,
                                                rightImage  : String?) -> ITNavigationBar {
        return self.createNavigationBar(title: title,
                                        leftTitle: leftTitle,
                                        leftImage: leftImage,
                                        leftSel: leftSel,
                                        rightTitle: rightTitle,
                                        rightImage: rightImage,
                                        rightSel: nil,
                                        isReturn: false,
                                        whiteIcon: false)
    }
    
    /// 创建一个有标题有左按钮和右按钮的导航栏
    ///
    /// - Parameters:
    ///   - title: 导航栏标题
    ///   - leftTitle: 左标题
    ///   - leftImage: 左按钮图标
    ///   - leftSel: 左按钮事件
    ///   - rightTitle: 右标题
    ///   - rightImage: 右按钮图标
    ///   - rightSel: 右按钮事件
    /// - Returns: 导航栏
    @discardableResult func createNavigationBar(title       : String?   = nil,
                                                leftTitle   : String?,
                                                leftImage   : String?,
                                                leftSel     : Selector?,
                                                rightTitle  : String?,
                                                rightImage  : String?,
                                                rightSel    : Selector? ) -> ITNavigationBar {
        return self.createNavigationBar(title: title,
                                        leftTitle: leftTitle,
                                        leftImage: leftImage,
                                        leftSel: leftSel,
                                        rightTitle: rightTitle,
                                        rightImage: rightImage,
                                        rightSel: rightSel,
                                        isReturn: false,
                                        whiteIcon: false)
    }
    
    /// 创建一个标题有返回事件导航栏
    ///
    /// - Parameters:
    ///   - title: 导航栏标题
    ///   - leftSel: 左按钮事件
    /// - Returns: 导航栏
    @discardableResult func createReturnNavigationBar(title       : String?   = nil,
                                                      leftSel     : Selector?) -> ITNavigationBar {
        return self.createNavigationBar(title: title,
                                        leftTitle: nil,
                                        leftImage: nil,
                                        leftSel: leftSel,
                                        rightTitle: nil,
                                        rightImage: nil,
                                        rightSel: nil,
                                        isReturn: true,
                                        whiteIcon: false)
    }
    
    /// 创建一个标题有返回事件可以设置白色或黑色返回图标的导航栏
    ///
    /// - Parameters:
    ///   - title: 导航栏标题
    ///   - leftSel: 左按钮事件
    ///   - whiteIcon: 设置白色或黑色返回图标
    /// - Returns: 导航栏
    @discardableResult func createReturnNavigationBar(title       : String?   = nil,
                                                      leftSel     : Selector?,
                                                      whiteIcon   : Bool) -> ITNavigationBar {
        return self.createNavigationBar(title: title,
                                        leftTitle: nil,
                                        leftImage: nil,
                                        leftSel: leftSel,
                                        rightTitle: nil,
                                        rightImage: nil,
                                        rightSel: nil,
                                        isReturn: true,
                                        whiteIcon: whiteIcon)
    }
    
    
    /// 创建一个标题有返回按钮标题的导航栏
    ///
    /// - Parameters:
    ///   - title: 导航栏标题
    ///   - leftTitle: 左标题
    ///   - leftSel: 左按钮事件
    /// - Returns: 导航栏
    @discardableResult func createReturnNavigationBar(title       : String?   = nil,
                                                      leftTitle   : String?,
                                                      leftSel     : Selector?) -> ITNavigationBar {
        return self.createNavigationBar(title: title,
                                        leftTitle: leftTitle,
                                        leftImage: nil,
                                        leftSel: leftSel,
                                        rightTitle: nil,
                                        rightImage: nil,
                                        rightSel: nil,
                                        isReturn: true,
                                        whiteIcon: false)
    }
    
    /// 创建一个标题有返回按钮标题和右按钮的导航栏
    ///
    /// - Parameters:
    ///   - title: 导航栏标题
    ///   - leftTitle: 左标题
    ///   - leftSel: 左按钮事件
    ///   - rightTitle: 右标题
    ///   - rightImage: 右按钮图标
    ///   - rightSel: 右按钮事件
    /// - Returns: 导航栏
    @discardableResult func createReturnNavigationBar(title       : String?   = nil,
                                                      leftTitle   : String?,
                                                      leftSel     : Selector?,
                                                      rightTitle  : String?,
                                                      rightImage  : String?,
                                                      rightSel    : Selector?) -> ITNavigationBar {
        return self.createNavigationBar(title: title,
                                        leftTitle: leftTitle,
                                        leftImage: nil,
                                        leftSel: leftSel,
                                        rightTitle: rightTitle,
                                        rightImage: rightImage,
                                        rightSel: rightSel,
                                        isReturn: true,
                                        whiteIcon: false)
    }
    
    
    /// 创建一个标题有返回按钮标题和右按钮可以设置白色或黑色返回图标的导航栏
    ///
    /// - Parameters:
    ///   - title: 导航栏标题
    ///   - leftTitle: 左标题
    ///   - leftSel: 左按钮事件
    ///   - rightTitle: 右标题
    ///   - rightImage: 右按钮图标
    ///   - rightSel: 右按钮事件
    ///   - whiteIcon: 设置白色或黑色返回图标
    /// - Returns: 导航栏
    @discardableResult func createReturnNavigationBar(title       : String?   = nil,
                                                      leftTitle   : String?,
                                                      leftSel     : Selector?,
                                                      rightTitle  : String?,
                                                      rightImage  : String?,
                                                      rightSel    : Selector?,
                                                      whiteIcon   : Bool) -> ITNavigationBar {
        return self.createNavigationBar(title: title,
                                        leftTitle: leftTitle,
                                        leftImage: nil,
                                        leftSel: leftSel,
                                        rightTitle: rightTitle,
                                        rightImage: rightImage,
                                        rightSel: rightSel,
                                        isReturn: true,
                                        whiteIcon: whiteIcon)
    }
    
    /// 基础创建方法
    ///
    /// - Parameters:
    ///   - title: 导航栏标题
    ///   - leftTitle: 左标题
    ///   - leftImage: 左按钮图标
    ///   - leftSel: 左按钮事件
    ///   - rightTitle: 右标题
    ///   - rightImage: 右按钮图标
    ///   - rightSel: 右按钮事件
    ///   - isReturn: 是否是返回按钮
    ///   - whiteIcon: 设置白色或黑色返回图标
    /// - Returns: 导航栏
    @discardableResult func createNavigationBar(title       : String?   = nil,
                                                leftTitle   : String?   = nil,
                                                leftImage   : String?   = nil,
                                                leftSel     : Selector? = nil,
                                                rightTitle  : String?   = nil,
                                                rightImage  : String?   = nil,
                                                rightSel    : Selector? = nil,
                                                isReturn    : Bool      = true,
                                                whiteIcon   : Bool) -> ITNavigationBar {
        
        self.view.viewWithTag(1000)?.removeFromSuperview()
        
        let navigationBar = createNavigationBar()
        navigationBar.titleLabel.text = title
        
        // 设置左按钮
        if leftTitle != nil || leftImage != nil || leftSel != nil {
            var image: UIImage? = nil
            if leftImage != nil {
                image = UIImage(named: leftImage!)
            }
            
            if isReturn {
                image = UIImage(named: whiteIcon ? "white_return" : "black_return")!
            }
            
            navigationBar.leftItem.setImage(image, for: .normal)
            if leftSel != nil {
                navigationBar.leftItem.addTarget(self, action: leftSel!, for: .touchUpInside)
            }
            navigationBar.leftItem.setTitle(leftTitle, for: .normal)
            navigationBar.leftItem.setTitleColor(whiteIcon ? .white : .black, for: .normal)
        }
        
        // 设置右按钮
        if rightTitle != nil || rightImage != nil || rightSel != nil {
            navigationBar.rightItem.setImage(UIImage(named: rightImage!), for: .normal)
            if rightSel != nil {
                navigationBar.rightItem.addTarget(self, action: rightSel!, for: .touchUpInside)
            }
            navigationBar.rightItem.setTitle(leftTitle, for: .normal)
            navigationBar.rightItem.setTitleColor(whiteIcon ? .white : .black, for: .normal)
        }
        
        return navigationBar
    }
    
}




// MARK: - 设备判断
class CYDevice {
    // 判断是否iPhone X
    static func isX() -> Bool {
        if UIScreen.main.bounds.height == 812 {
            return true
        }
        return false
    }
    // 判断是否竖屏
    static func isPortrait() -> Bool {
        if UIDeviceOrientationIsPortrait(UIDevice.current.orientation) {
            return true
        }
        
        if UIDeviceOrientationIsLandscape(UIDevice.current.orientation) {
            return false
        } else {
            return self.width() < self.height() ? true : false
        }
    }
    // 屏幕宽度
    static func width() -> CGFloat {
        return UIScreen.main.bounds.width
    }
    // 屏幕高度
    static func height() -> CGFloat {
        
        return UIScreen.main.bounds.height
    }
    // 导航栏高度
    static func navigation_h() -> CGFloat {
        // 系统横屏的高度 为 32
        let height = CGFloat(self.isPortrait() ? (self.isX() ? 88 : 64) : 32)
        
        return height
    }
    
    
    static func statusBar_h() -> CGFloat {
        return self.isPortrait() ? (self.isX() ? 44 : 20) : 0
    }
    
    static func tabbar_h() -> CGFloat {
        return CGFloat(self.isPortrait() ? (self.isX() ? 83 : 49) : 32)
    }
    //    #define getWidth(x)   (SCREEN_WIDTH/375.0 * (x))
    //    #define getHeight(y)  (SCREEN_HEIGHT/667.0 * (y))
    static func getWidth(w : CGFloat) -> CGFloat {
        return UIScreen.main.bounds.width / 375.0 * w
    }
    
    static func getHeight(h : CGFloat) -> CGFloat {
        return UIScreen.main.bounds.height / 667.0 * h
    }
}









