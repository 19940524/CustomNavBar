//
//  ITNavigationBar.swift
//  ZAKER Pro
//
//  Created by 薛国宾 on 2018/1/28.
//  Copyright © 2018年 GuoBin. All rights reserved.
//

import UIKit

let SYS_FONT = UIFont(name: ".SFUIText-Semibold", size: 17)
let SPLIT_LINE_COLOR = UIColor(red: 232.0 / 255, green: 232.0 / 255, blue: 232.0 / 255, alpha: 1)

class ITNavigationBar: UIView {
    
    private let blurView = UIToolbar()
    var bottomLine: UIImageView?
    
    // 左item懒加载
    var _leftItme: ITButton? = nil
    lazy var leftItem = { () -> ITButton in
        _leftItme = ITButton(type: .custom)
        _leftItme?.itMargin = 6
        _leftItme?.itAlignment = .left
        _leftItme?.itInset = UIEdgeInsets(top: 0, left: 12, bottom: 0, right: 0)
        _leftItme?.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        self.addSubview(_leftItme!)
        return _leftItme!
    }()

    var _rightItem: ITButton? = nil
    lazy var rightItem = { () -> ITButton in
        _rightItem = ITButton(type: .custom)
        _rightItem?.itMargin = 6
        _rightItem?.itAlignment = .rightTitleCenter
        _leftItme?.itInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 12)
        _rightItem?.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        self.addSubview(_rightItem!)
        return _rightItem!
    }()
    
    // 标题
    
     var titleLabel = UILabel()
    
    // 模糊样式
    var barStyle = UIBarStyle.default {
        willSet {
            print(newValue)
            blurView.barStyle = newValue
        }
    }
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)

        initialize()
        
    }
    
    func initialize() {
        self.frame = CGRect(x: 0, y: 0, width: CYDevice.width(), height: CYDevice.navigation_h())
        
        self.addSubview(blurView)
        
        self.titleLabel.font = SYS_FONT ?? UIFont()
        self.titleLabel.textAlignment = .center
        self.addSubview(self.titleLabel)
        
        self.bottomLine = UIImageView()
//        self.bottomLine?.image = UIImage(named: "nav_line")
        self.bottomLine?.backgroundColor = SPLIT_LINE_COLOR
        self.addSubview(self.bottomLine!)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.setSubviewFrame()
    }
    
    func setSubviewFrame() {
        
        self.frame = CGRect(x: 0, y: 0, width: CYDevice.width(), height: CYDevice.navigation_h())
        
        blurView.frame = self.bounds
        bottomLine?.frame = CGRect(x: 0, y: CYDevice.navigation_h()-0.5, width: CYDevice.width(), height: 0.5)
        
        if _leftItme != nil {
            let H = CYDevice.navigation_h() - CYDevice.statusBar_h()
            
            var W:CGFloat = (_leftItme?.itInset.left)! + (_leftItme?.imageView?.frame.size.width)! + leftItem.itMargin + (_leftItme?.titleLabel!.frame.size.width)!;
            W = max(W, 70)
            _leftItme?.frame = CGRect(x: CGFloat(0.0), y: CYDevice.statusBar_h(), width: W, height: H)
        }
        
        if _rightItem != nil {
            let H = CYDevice.navigation_h() - CYDevice.statusBar_h()
            var W:CGFloat = rightItem.itInset.right + (rightItem.imageView?.frame.size.width)! + rightItem.itMargin + rightItem.titleLabel!.frame.size.width;
            W = max(W, 70)
            _rightItem?.frame = CGRect(x: CYDevice.width()-W, y: CYDevice.statusBar_h(), width: W, height: H)
        }
        
        if  titleLabel.text != nil {
            self.titleLabel.sizeToFit()
            let H = CYDevice.navigation_h() - CYDevice.statusBar_h()
            let W = CYDevice.width() - 140
            titleLabel.frame.size = CGSize(width: W, height: H)
            
            let statusH = CYDevice.statusBar_h()
            let navH = CYDevice.isPortrait() ? 44.0 : 32.0
            let y = CGFloat(navH / 2.0) - ((titleLabel.frame.size.height) / 2.0) + statusH
            titleLabel.frame.origin = CGPoint(x: CYDevice.width()/2-(titleLabel.frame.size.width) / 2, y: y)
        }
        
    }
    
    public func setText(title: String?) {
        self.titleLabel.text = title
        self.setSubviewFrame()
    }
    
    

    
    
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
