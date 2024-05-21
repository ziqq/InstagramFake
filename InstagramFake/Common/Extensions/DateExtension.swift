//
//  DateExtension.swift
//  InstagramFake
//
//  Created by Anton Ustinoff on 31.08.2023.
//

import Foundation

extension Date {
    
    // MARK: - Private Method(s)
    private func _initFormater(dateFormat: String) -> DateFormatter {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = dateFormat
        dateFormatter.locale = Locale(identifier: "ru")
        return dateFormatter;
    }
    
    // MARK: - Public Method(s)
    func dayNameOfWeek() -> String? {
        let dateFormatter = _initFormater(dateFormat: "cccc")
        return dateFormatter.string(from: self)
    }
    
    /// Example: 1
    func dayNumber() -> String? {
        let dateFormatter = _initFormater(dateFormat: "d")
        return dateFormatter.string(from: self)
    }
    
    /// Example: 1d or 1h
    func dayOrHour() -> String? {
        let dateFormatterDay = _initFormater(dateFormat: "d")
        let dateFormatterHour = _initFormater(dateFormat: "H")
        
        let hourAsInt = Int(dateFormatterHour.string(from: self)) ?? 0
        
        print("[INFO]: self: \(self)")
        
        print("[INFO]: hourAsInt: \(hourAsInt)")
        
        return hourAsInt > 23
        ? dateFormatterDay.string(from: self) + "d"
        : dateFormatterHour.string(from: self) + "h"
    }
    
    /// Example: Пн, 1 июля
    func fullInfo() -> String? {
        let dateFormatter = _initFormater(dateFormat: "EE, d MMM")
        return dateFormatter.string(from: self)
    }
    
    // MARK: - base getters
    var year: Int {
       let cal = Calendar.current
       return cal.dateComponents([.year], from: self).year ?? 0
    }
    var month: Int {
       let cal = Calendar.current
       return cal.dateComponents([.month], from: self).month ?? 0
    }
    var day: Int {
       let cal = Calendar.current
       return cal.dateComponents([.day], from: self).day ?? 0
    }
    var hour: Int {
       let cal = Calendar.current
       return cal.dateComponents([.hour], from: self).hour ?? 0
    }
    var minute: Int {
       let cal = Calendar.current
       return cal.dateComponents([.minute], from: self).minute ?? 0
    }
    var second: Int {
       let cal = Calendar.current
       return cal.dateComponents([.second], from: self).second ?? 0
    }
}

