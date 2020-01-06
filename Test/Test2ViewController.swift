//
//  Test2ViewController.swift
//  Test
//
//  Created by xiaofeng on 2020/1/1.
//  Copyright © 2020 xiaofeng. All rights reserved.
//

import UIKit
import SnapKit

class Test2ViewController: RootViewController {
    
//    private lazy var btn : UIButton = {
//        let btn = UIButton(type: UIButton.ButtonType.custom)
//        btn.backgroundColor = UIColor.red
//        btn.setTitle("您好", for: .normal)
//        return btn
//    }()
    
//    private lazy var btn : TestBtn = {
//        let btn = TestBtn(titleName: "您好")
//        btn.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
//        return btn
//    }()
    
    private lazy var btn : UIView = {
        let btn = UIView(titleName: "您好", cornerRadius: 10)
        btn.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        btn.backgroundColor = UIColor.red
        return btn
    }()
    
    private lazy var view1 : UIView = {
       let view1 = UIView()
        view1.backgroundColor = UIColor.yellow
        return view1
    }()
    
    private lazy var view2: UIView = {
        let view2 = UIView()
        view2.backgroundColor = UIColor.orange
        view2.isUserInteractionEnabled = true
        view2.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(jumpTest3)))
        return view2
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(btn)
        
        view.addSubview(view1)
        view1.mas_makeConstraints { (make) in
            make!.left.mas_equalTo()(btn.mas_left)
            make!.top.mas_equalTo()(btn.mas_bottom)!.setOffset(100)
            make!.height.width()!.mas_equalTo()(200)
        }
        view.addSubview(view2);
        view2.snp.makeConstraints { (make) in
            make.top.equalTo(view1.snp.bottom).offset(100)
            make.width.height.equalTo(200)
            make.left.equalTo(view1.snp.left)
        }
    }
    
    deinit {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "NOTIFICATION"), object: nil)
    }
}


extension Test2ViewController {
   @objc convenience init(titleName: String){
        self.init()
        title = titleName
    }
    
}

extension Test2ViewController {
    @objc func jumpTest3(){
        let test3 = Test3ViewController(titleName: "这是第三个控制器")
//        test3.modalPresentationStyle = .fullScreen
//        present(test3, animated: true, completion: nil)
        navigationController?.pushViewController(test3, animated: true)
        
    }
}
