//
//  DateExtension.swift
//  InstagramFake
//
//  Created by Anton Ustinoff on 31.08.2023.
//

import Foundation

extension Date {
    
    // MARK:- Private Method(s)
    private func _initFormater(dateFormat: String) -> DateFormatter {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = dateFormat
        dateFormatter.locale = Locale(identifier: "ru")
        return dateFormatter;
    }
    
    // MARK:- Public Method(s)
    func dayNameOfWeek() -> String? {
        let dateFormatter = _initFormater(dateFormat: "cccc")
        return dateFormatter.string(from: self)
    }
    
    // Example: 1
    func dayNumber() -> String? {
        let dateFormatter = _initFormater(dateFormat: "d")
        return dateFormatter.string(from: self)
    }
    
    // Example: Пн, 1 июля
    func fullInfo() -> String? {
        let dateFormatter = _initFormater(dateFormat: "EE, d MMM")
        return dateFormatter.string(from: self)
    }
}

