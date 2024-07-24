//
//  UIView + ext.swift
//  homework_1
//
//  Created by Макей 😈 on 23.07.2024.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView ...) {
        views.forEach {
            self.addSubview($0)
        }
    }
}
