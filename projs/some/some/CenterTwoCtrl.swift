//
//  CenterTwoCtrl.swift
//  some
//
//  Created by Jz D on 2020/5/3.
//  Copyright © 2020 Jz D. All rights reserved.
//

import UIKit
import SnapKit

class CenterTwoCtrl: UIViewController {
    
    
    
    var one = {() -> UILabel in
        let l = UILabel()
        l.textAlignment = .center
        l.textColor = UIColor.red
        l.backgroundColor = UIColor.lightGray
        l.text = "从来如此"
        return l
    }()
    
    
    var two = {() -> UILabel in
        let l = UILabel()
        l.textAlignment = .center
        l.textColor = UIColor.red
        l.backgroundColor = UIColor.lightGray
        l.text = "便对么？"
        return l
    }()
    
    var verticleLine = { () -> UIView in
        let l = UIView()
        l.backgroundColor = UIColor.black
        return l
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.addSubview(one)
        view.addSubview(two)
        view.addSubview(verticleLine)
        one.snp.makeConstraints { (m) in
            m.centerX.equalTo(view.snp.centerX).multipliedBy(0.5)
            m.centerY.equalToSuperview()
        }
        
        two.snp.makeConstraints { (m) in
            m.centerX.equalTo(view.snp.centerX).multipliedBy(1.5)
            m.centerY.equalToSuperview()
        }
        
        verticleLine.snp.makeConstraints { (m) in
            m.centerX.equalToSuperview()
            m.top.equalToSuperview().offset(50)
            m.bottom.equalToSuperview().offset(-50)
            m.width.equalTo(1)
        }
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
