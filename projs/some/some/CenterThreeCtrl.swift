//
//  CenterThreeCtrl.swift
//  some
//
//  Created by Jz D on 2020/5/3.
//  Copyright © 2020 Jz D. All rights reserved.
//

import UIKit

class CenterThreeCtrl: UIViewController {
    
    var one = {() -> UILabel in
        let l = UILabel()
        l.textColor = UIColor.red
        l.backgroundColor = UIColor.lightGray
        l.numberOfLines = 2
        l.textAlignment = .center
        l.text = "兴趣是最好的老师"
        return l
    }()
    
    
    var two = {() -> UILabel in
        let l = UILabel()
        l.textColor = UIColor.red
        l.textAlignment = .center
        l.backgroundColor = UIColor.lightGray
        l.text = "其次是耻辱"
        return l
    }()
    
    
    var three = {() -> UILabel in
        let l = UILabel()
        l.textColor = UIColor.red
        l.textAlignment = .center
        l.backgroundColor = UIColor.lightGray
        l.text = "还有无聊"
        return l
    }()
    
    var verticleLineOne = { () -> UIView in
        let l = UIView()
        l.backgroundColor = UIColor.black
        return l
    }()
    
    
    var verticleLineTwo = { () -> UIView in
        let l = UIView()
        l.backgroundColor = UIColor.black
        return l
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.addSubview(one)
        view.addSubview(two)
        view.addSubview(three)
        
        view.addSubview(verticleLineOne)
        view.addSubview(verticleLineTwo)
        one.snp.makeConstraints { (m) in
            m.centerX.equalTo(view.snp.centerX).multipliedBy(0.33)
            m.centerY.equalToSuperview()
            m.width.equalTo(view.snp.width).multipliedBy(0.2)
        }
        
        two.snp.makeConstraints { (m) in
            m.centerX.equalToSuperview()
            m.centerY.equalToSuperview()
        }
        
        three.snp.makeConstraints { (m) in
            m.centerX.equalTo(view.snp.centerX).multipliedBy(1.67)
            m.centerY.equalToSuperview()
        }
        
        
        verticleLineOne.snp.makeConstraints { (m) in
            m.centerX.equalTo(view.snp.centerX).multipliedBy(0.67)
            m.top.equalToSuperview().offset(50)
            m.bottom.equalToSuperview().offset(-50)
            m.width.equalTo(1)
        }
        
        
        verticleLineTwo.snp.makeConstraints { (m) in
            m.centerX.equalTo(view.snp.centerX).multipliedBy(1.33)
            m.top.bottom.width.equalTo(verticleLineOne)
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
