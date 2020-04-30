//
//  Extern.swift
//  layoutDSL
//
//  Created by Jz D on 2020/4/30.
//  Copyright © 2020 Jz D. All rights reserved.
//

import UIKit



extension UIView {
    func layout(using closure: (LayoutProxy) -> Void) {
        translatesAutoresizingMaskIntoConstraints = false
        closure(LayoutProxy(view: self))
    }
}

