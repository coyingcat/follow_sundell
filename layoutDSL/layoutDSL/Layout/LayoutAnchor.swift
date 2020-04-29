//
//  LayoutAnchor.swift
//  layoutDSL
//
//  Created by Jz D on 2020/4/29.
//  Copyright © 2020 Jz D. All rights reserved.
//

import UIKit


protocol LayoutAnchor {
    
    func constraint(equalTo anchor: Self,
                    constant: CGFloat) -> NSLayoutConstraint
    
    
    func constraint(greaterThanOrEqualTo anchor: Self,
                    constant: CGFloat) -> NSLayoutConstraint
    
    
    func constraint(lessThanOrEqualTo anchor: Self,
                    constant: CGFloat) -> NSLayoutConstraint
}



extension NSLayoutAnchor: LayoutAnchor {}


