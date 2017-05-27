//
//  SecondViewController.swift
//  TestBlock
//
//  Created by xiaoshunliang on 2017/5/26.
//  Copyright © 2017年 bodaokeji. All rights reserved.
//

import UIKit

typealias TestBlock = (String,String)->Void

protocol TestDelaget {
    
  func testDelagetMethod(str:String) ->Void
    
}

class SecondViewController: UIViewController {
    
    
     var delegate: TestDelaget?
    
     var block: TestBlock?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate?.testDelagetMethod(str: "这个代理传递的值");
        view.backgroundColor = UIColor.white;
        let tf = UITextField.init(frame: CGRect(x: 20, y: 100, width: 100, height: 30));
        view.addSubview(tf);
        
        let btn = UIButton.init(type: .custom);
        btn.frame = CGRect(x: 10, y: 200, width: 300, height: 40);
        btn.setTitle("返回上一个页面", for: .normal);
        btn.addTarget(self, action: #selector(btnClicked), for: .touchUpInside);
        btn.backgroundColor = UIColor.red;
        view.addSubview(btn)
    }
    func btnClicked() {
        self.block!("我是第一个参数","我是第二个参数");
        self.navigationController?.popViewController(animated: true);
    }



}
