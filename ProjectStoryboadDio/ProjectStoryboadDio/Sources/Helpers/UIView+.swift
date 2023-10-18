//
//  UIView+.swift
//  ProjectStoryboadDio
//
//  Created by Rogerio Martins on 18/10/23.
//

import Foundation
import UIKit

extension UIView {
    func addSubViews(_ views: UIView...) {
        views.forEach({
            addSubview($0)
        })
    }
}
