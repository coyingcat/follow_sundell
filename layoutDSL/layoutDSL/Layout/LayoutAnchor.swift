//
//  LayoutAnchor.swift
//  layoutDSL
//
//  Created by Jz D on 2020/4/29.
//  Copyright © 2020 Jz D. All rights reserved.
//

import UIKit


protocol LayoutAnchor{
    
    func constraint(equalTo anchor: Self,
                    constant: CGFloat) -> NSLayoutConstraint
    
    
    func constraint(greaterThanOrEqualTo anchor: Self,
                    constant: CGFloat) -> NSLayoutConstraint
    
    
    func constraint(lessThanOrEqualTo anchor: Self,
                    constant: CGFloat) -> NSLayoutConstraint
}



extension NSLayoutAnchor: LayoutAnchor {}



public protocol NamespaceWrap{
    associatedtype WrapperType
    var put: WrapperType { get }
}

public extension NamespaceWrap{
    var put: NamespaceWrapper<Self> {
        return NamespaceWrapper(val: self)
    }
}

public protocol TypeWrapper{
    associatedtype WrappedType
    var wrapped: WrappedType { get }
    init(val: WrappedType)
}

public struct NamespaceWrapper<T>: TypeWrapper{
    public let wrapped: T
    public init(val: T) {
        self.wrapped = val
    }
}


extension UIView: NamespaceWrap{ }



extension TypeWrapper where WrappedType: UIView {
    func layout(using closure: (LayoutProxy) -> Void) {
        wrapped.translatesAutoresizingMaskIntoConstraints = false
        closure(LayoutProxy(view: wrapped))
    }
    
    var bottom: LayoutProperty<NSLayoutAnchor<NSLayoutYAxisAnchor>>{
        LayoutProperty(anchor: wrapped.bottomAnchor)
    }
    
    var leading: LayoutProperty<NSLayoutAnchor<NSLayoutXAxisAnchor>>{
        LayoutProperty(anchor: wrapped.leadingAnchor)
    }
    
    
    var width: LayoutProperty<NSLayoutAnchor<NSLayoutDimension>>{
        LayoutProperty(anchor: wrapped.widthAnchor)
    }
    
    
    var centerX: LayoutProperty<NSLayoutAnchor<NSLayoutXAxisAnchor>>{
        LayoutProperty(anchor: wrapped.centerXAnchor)
    }
    
    var centerY: LayoutProperty<NSLayoutAnchor<NSLayoutYAxisAnchor>>{
        LayoutProperty(anchor: wrapped.centerYAnchor)
    }
    
}
