//
//  ViewController.swift
//  TestBlock
//
//  Created by xiaoshunliang on 2017/5/26.
//  Copyright © 2017年 bodaokeji. All rights reserved.
//

import UIKit

class ViewController: UIViewController,TestDelaget {
    func testDelagetMethod(str: String) {
         print("test delegate---\(str)")
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let tf = UITextField.init(frame: CGRect(x: 20, y: 100, width: 100, height: 30));
        view.addSubview(tf);
        
        let btn = UIButton.init(type: .custom);
        btn.frame = CGRect(x: 10, y: 200, width: 300, height: 40);
        btn.setTitle("点我进入下一个页面", for: .normal);
        btn.backgroundColor = UIColor.cyan;
        btn.addTarget(self, action: #selector(btnClicked), for: .touchUpInside);
        view.addSubview(btn);
    }
    func btnClicked() {
        let vc = SecondViewController();
        vc.delegate = self;
        vc.block = {
            
            (str1: String,str2:String) -> Void in

              print(str1+str2)
         }
        self.navigationController?.pushViewController(vc, animated: true);
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

