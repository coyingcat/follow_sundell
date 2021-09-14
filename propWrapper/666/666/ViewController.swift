//
//  ViewController.swift
//  666
//
//  Created by Jz D on 2021/9/14.
//

import UIKit



struct Figure: Decodable {
    @LosslessValue var name: String = "ha ha"
    @LosslessValue var age = 0
}


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        var dict: [String: Any] = ["name": "666", "age": 666]
        dict = ["name": 666, "age": "666"]
        if let jsonData = try? JSONSerialization.data(withJSONObject: dict, options: []), let model = try? JSONDecoder().decode(Figure.self, from: jsonData){
            print(model.name, " - ", model.age)
            
        }
        

        
        
    }


}

