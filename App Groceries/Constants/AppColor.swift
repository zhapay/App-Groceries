//
//  AppConstants.swift
//  App Groceries
//
//  Created by Dastan Zhapay on 20.08.2022.
//

import UIKit.UIColor

enum AppColor {
    case green

    var uiColor: UIColor {
        switch self {
        case .green: return UIColor(rgb: 83, 177, 117)
        }
    }

    var cgColor: CGColor { uiColor.cgColor }
}

extension UIColor {

    /// Initialize from integral RGB values (+ alpha channel in range 0-100)
    convenience init(rgb: UInt8..., alpha: UInt = 100) {
        self.init(
            red: CGFloat(rgb[0]) / 255,
            green: CGFloat(rgb[1]) / 255,
            blue: CGFloat(rgb[2]) / 255,
            alpha: CGFloat(min(alpha, 100)) / 100
        )
    }
}

