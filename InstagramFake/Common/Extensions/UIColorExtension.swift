//
//  UIColorExtension.swift
//  InstagramFake
//
//  Created by Anton Ustinoff on 30.08.2023.
//

import Foundation
import UIKit

extension UIColor {
    /// RGBA usage
    /// static let primaryBlue = UIColor.rgba(red: 0, green: 122, blue: 255, alpha: 1)
    /// static let transparentBlack = UIColor.rgba(red: 0, green: 0, blue: 0, alpha: 0.5)
    static func rgba(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) -> UIColor {
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: alpha)
    }
    
    /// HEX usage
    /// static let midGrey = UIColor(hexColor: "#3f3f3f")
    /// static let midGreyAlpha = UIColor(hexColor: "#CCCCCC", alpha: 0.5)
    convenience init(hexColor: String, alpha: CGFloat = 1) {
        let hexColor: String = hexColor.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        let scanner = Scanner(string: hexColor)
        if (hexColor.hasPrefix("#")) {
            scanner.currentIndex = hexColor.startIndex
        }
        var color: UInt64 = 0
        scanner.scanHexInt64(&color)
        let mask = 0x000000FF
        let r = Int(color >> 16) & mask
        let g = Int(color >> 8) & mask
        let b = Int(color) & mask
        let red   = CGFloat(r) / 255.0
        let green = CGFloat(g) / 255.0
        let blue  = CGFloat(b) / 255.0
        self.init(red:red, green:green, blue:blue, alpha:alpha)
    }
}

