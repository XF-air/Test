//
//  TestViewController.swift
//  Test
//
//  Created by xiaofeng on 2020/1/1.
//  Copyright © 2020 xiaofeng. All rights reserved.
//

import UIKit

public protocol TestViewControllerDelegate {
    func add()
}

//source 'https://github.com/CocoaPods/Specs.git'

class TestViewController: UIViewController {
    
    @objc var block : ((Int) -> ())?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.yellow
        
        TestDefault.default.eam_default()
        
        NotificationCenter.default.addObserver(self, selector: #selector(eam_notification), name: NSNotification.Name(rawValue: "NOTIFICATION"), object: nil)
        
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        dismiss(animated: true) {
//            if self.block != nil {
//                self.block!(2)
//            }
//        }
        
//        present(Test2ViewController(titleName: "这是第二个测试控制器"), animated: true, completion: nil)
        navigationController?.pushViewController(Test2ViewController(titleName: "这是第二个测试控制器"), animated: true)
        
//        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "NOTIFICATION"), object: nil)
    }
    
    func eam_test(a: Int) -> (Int, Int) -> (Int) {
        var result : (Int, Int) -> (Int)
        result = { (a, b) in
            return a + b
        }
        return result
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
//        dismiss(animated: true, completion: nil)
    }
}

extension TestViewController {
    @objc func eam_notification() {
        
    }
}
