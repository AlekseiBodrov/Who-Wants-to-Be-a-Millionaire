//
//  UIStackView + Extensions.swift
//  Who-Wants-to-Be-a-Millionaire
//
//  Created by Ildar Garifullin on 05/02/2023.
//

import UIKit

extension UIStackView {
    convenience init(arrangedSubviews: [UIView], axis: NSLayoutConstraint.Axis, spacing: CGFloat) {
        self.init(arrangedSubviews: arrangedSubviews)
        self.axis = axis
        self.spacing = spacing
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
