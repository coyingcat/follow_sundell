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
        
        
        label.translatesAutoresizingMaskIntoConstraints = false

        let proxy = LayoutProxy(view: label)
        proxy.top.equal(to: button.bottomAnchor, offsetBy: 20)
        proxy.leading.equal(to: button.leadingAnchor)
        proxy.width.lessThanOrEqual(to: view.widthAnchor, offsetBy: -40)
        
    }


}

