//
//  ViewController.swift
//  layoutDSL
//
//  Created by Jz D on 2020/4/29.
//  Copyright © 2020 Jz D. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let button = UIButton(frame: CGRect(x: 100, y: 100, width: 150, height: 150))
        button.setTitleColor(UIColor.red, for: UIControl.State.normal)
        button.backgroundColor = UIColor.red
        
        
        let label = UILabel()
        label.text = "456"
        
        
        view.addSubview(button)
        view.addSubview(label)

       
        label.put.layout {
            $0.top == button.put.bottom + 20
            $0.leading == button.put.leading
            $0.width <= view.put.width - 40
        }
        
        
        
    }


}

