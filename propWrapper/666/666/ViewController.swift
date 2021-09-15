//
//  ViewController.swift
//  666
//
//  Created by Jz D on 2021/9/14.
//

import UIKit



struct Figure: Decodable {
    @LosslessValue var name: String
    @LosslessValue var age: Int
}


enum VariousTypeErr: Error {
    case miss
}



enum VariousType: Decodable{

    case aDouble(Double), aFloat(Float), aInt(Int), aString(String)

       init(from decoder: Decoder) throws {
        
          if let int = try? decoder.singleValueContainer().decode(Int.self) {
               self = .aInt(int)
                return
           }
        
           if let value = try? decoder.singleValueContainer().decode(Double.self) {
               self = .aDouble(value)
               return
           }
        
            if let gotIt = try? decoder.singleValueContainer().decode(Float.self) {
                self = .aFloat(gotIt)
                return
            }
        
            if let text = try? decoder.singleValueContainer().decode(String.self) {
                self = .aString(text)
                return
            }

           throw VariousTypeErr.miss
       }

    var strVal: String{
        switch self {
        case .aDouble(let val):
            return String(val)
        case .aFloat(let val):
            return String(val)
        case .aInt(let val):
            return String(val)
        case .aString(let val):
            return val
        }
    }
    
    
    
    var intVal: Int{
        switch self {
        case .aDouble(let val):
            return Int(val)
        case .aFloat(let val):
            return Int(val)
        case .aInt(let val):
            return val
        case .aString(let val):
            return Int(val) ?? 0
        }
    }
}



struct Person: Decodable {
    var name: VariousType
    var age: VariousType
}


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        var dict: [String: Any] = ["name": "666", "age": 666]
        dict = ["name": 666, "age": "666"]
        if let jsonData = try? JSONSerialization.data(withJSONObject: dict, options: []), let model = try? JSONDecoder().decode(Figure.self, from: jsonData){
            print(model.name, " - ", model.age)
            
        }
        
        
        if let jsonData = try? JSONSerialization.data(withJSONObject: dict, options: []), let model = try? JSONDecoder().decode(Person.self, from: jsonData){
            print(model.name.strVal, " - ", model.age.intVal)
            
        }
    }


}

