//
//  Extern.swift
//  layoutDSL
//
//  Created by Jz D on 2020/4/30.
//  Copyright © 2020 Jz D. All rights reserved.
//

import UIKit






//  plus


func + <A: LayoutAnchor>(lhs: A, rhs: CGFloat) -> (A, CGFloat) {
    return (lhs, rhs)
}

func - <A: LayoutAnchor>(lhs: A, rhs: CGFloat) -> (A, CGFloat) {
    return (lhs, -rhs)
}



func ==<A: LayoutAnchor>(lhs: LayoutProperty<A>,
                         rhs: (A, CGFloat)) {
    lhs.equal(to: rhs.0, offsetBy: rhs.1)
}

func ==<A: LayoutAnchor>(lhs: LayoutProperty<A>, rhs: A) {
    lhs.equal(to: rhs)
}



//           > 大于 = 等于， 括号

func >=<A: LayoutAnchor>(lhs: LayoutProperty<A>,
                         rhs: (A, CGFloat)) {
    lhs.greaterThanOrEqual(to: rhs.0, offsetBy: rhs.1)
}


func >=<A: LayoutAnchor>(lhs: LayoutProperty<A>, rhs: A) {
    lhs.greaterThanOrEqual(to: rhs)
}


func <=<A: LayoutAnchor>(lhs: LayoutProperty<A>,
                         rhs: (A, CGFloat)) {
    lhs.lessThanOrEqual(to: rhs.0, offsetBy: rhs.1)
}



func <=<A: LayoutAnchor>(lhs: LayoutProperty<A>, rhs: A) {
    lhs.lessThanOrEqual(to: rhs)
}



