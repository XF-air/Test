//
//  Test-extension.swift
//  Test
//
//  Created by xiaofeng on 2020/1/2.
//  Copyright © 2020 xiaofeng. All rights reserved.
//

import Foundation

extension UIView {
    convenience init(titleName: String, cornerRadius: CGFloat = 5){
        let btn = UIButton()
        btn.setTitle(titleName, for: .normal)
        btn.frame = CGRect(origin: CGPoint.zero, size: CGSize(width: 100, height: 100))
        btn.backgroundColor = UIColor.black
        btn.layer.cornerRadius = cornerRadius
        self.init()
    }
}
