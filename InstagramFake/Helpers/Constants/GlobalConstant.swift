//
//  GlobalConstant.swift
//  InstagramFake
//
//  Created by Anton Ustinoff on 30.08.2023.
//

import Foundation

extension Double {
    public static let kRectX = 30.0
    public static let kRectY = 30.0
    public static let kRectWidth = 30.0
    public static let kRectHeight = 30.0
}

public func makeRect() -> CGRect {
    return CGRect(x: .kRectX, y: .kRectY, width: .kRectWidth, height: .kRectHeight)
}

extension String {
    
    // Notifications
    public static let myCustomNotification = "myCustomNotification"

    // URL paths
    public static let myURLPath = "https://www.google.com/"
    public static func myOtherURLPath() -> String { return "https://www.google.com" }
}


extension NSURL {
    public static let myURL = NSURL(string: .myURLPath)
    public static let myOtherURL = NSURL(string: .myOtherURLPath())
    public static func myThirdURL() -> NSURL { return NSURL(string: .myURLPath)! }
}

//public func postNotification () {
//    NSNotificationCenter.defaultCenter.postNotificationName(.myCustomNotification, object: nil)
//}
//
//public func makeRequest() {
//    // Can't omit type with just string
//    let request = NSMutableURLRequest(url: NSURL.myURL! as URL)
//    let otherReqeust = NSMutableURLRequest(url: NSURL.myOtherURL! as URL)
//    // Can omit with func!
//    let thirdRequest = NSMutableURLRequest(url: .myThirdURL())
//}
