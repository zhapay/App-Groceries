//
//  Ext + UIView.swift
//  App Groceries
//
//  Created by Dastan Zhapay on 20.08.2022.
//

import Foundation
import UIKit

extension UIView {
    func addSubviews(_ views: [UIView]) {
        views.forEach({
            addSubview($0)
        })
    }
}
