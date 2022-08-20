//
//  ImageProtocol.swift
//  App Groceries
//
//  Created by Dastan Zhapay on 20.08.2022.
//

import UIKit

protocol ImageProtocol {
    /// UIImage asset value
    var rawValue: String { get }
}

extension ImageProtocol {

    /// Return a value as **UIImage**
    var uiImage: UIImage? {
        return UIImage(named: rawValue)
    }

    /// Return a value as **CGImage**
    var cgImage: CGImage? {
        return self.uiImage?.cgImage
    }

    var originalImage: UIImage? {
        return uiImage?.withRenderingMode(.alwaysOriginal)
    }

    var templateImage: UIImage? {
        return uiImage?.withRenderingMode(.alwaysTemplate)
    }
}
