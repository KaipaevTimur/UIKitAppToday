//
//  UIView+PinnedSubview.swift
//  Today
//
//  Created by Admin on 06.07.2022.
//

import UIKit

extension UIView {
    func addPinnedSubview(_ subview: UIView, heigh: CGFloat? = nil, insets: UIEdgeInsets = UIEdgeInsets(top: 0, left: 8, bottom: 0, right: 8)) {
        addSubview(subview)
        subview.translatesAutoresizingMaskIntoConstraints = false
        subview.topAnchor.constraint(equalTo: topAnchor, constant: insets.top).isActive = true
     // subview.bottomAnchor.constraint(equalTo: topAnchor, constant: insets.bottom).isActive = true
        subview.leadingAnchor.constraint(equalTo: leadingAnchor, constant: insets.left).isActive = true
        subview.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -1.0 * insets.right).isActive = true
        subview.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -1.0 * insets.bottom).isActive = true
        
        if let heigh = heigh {
            subview.heightAnchor.constraint(equalToConstant: heigh).isActive = true
        }
    }
}
