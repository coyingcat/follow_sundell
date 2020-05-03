//
//  LeadingTwoCtrl.swift
//  some
//
//  Created by Jz D on 2020/5/3.
//  Copyright © 2020 Jz D. All rights reserved.
//

import UIKit

class LeadingTwoCtrl: UIViewController {
    
    
    var one = {() -> UILabel in
        let l = UILabel()
        l.textAlignment = .center
        l.textColor = UIColor.red
        l.backgroundColor = UIColor.lightGray
        l.text = "大漠孤烟直"
        return l
    }()
    
    
    var two = {() -> UILabel in
        let l = UILabel()
        l.textAlignment = .center
        l.textColor = UIColor.red
        l.backgroundColor = UIColor.lightGray
        l.text = "长河落日圆"
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
            m.leading.equalToSuperview().offset(20)
            m.centerY.equalToSuperview()
        }
        
        two.snp.makeConstraints { (m) in
            m.leading.equalTo(view.snp.centerX).offset(20)
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
