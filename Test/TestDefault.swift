//
//  TestDefault.swift
//  Test
//
//  Created by xiaofeng on 2020/1/2.
//  Copyright © 2020 xiaofeng. All rights reserved.
//

import UIKit

public class TestDefault {
    
    public static let `default` = TestDefault()
    
    private init(){}
}

extension TestDefault {
    func eam_default() {
        NSLog("打印单例模式");
    }
}
