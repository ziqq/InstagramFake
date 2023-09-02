//
//  AppConstants.swift
//  InstagramFake
//
//  Created by Anton Ustinoff on 30.08.2023.
//

import Foundation
import SwiftUI

struct AppConstants {
    
    struct API {
        // example: static let apiUrl = "https://api.example.com/"
        // example: static let DB_REF = Firestore.firestore()
        
        // example: static let USERS_DB_REF = DB_REF.collection(USERS_REF)
        // example: static let USERS_REF = "users"
    }

    struct Content {
        // example: static let Category = "category"
        
        static let logo: String = "logo_instagram_svg"
        static let logoFacebook: String = "logo_facebook_svg"
        
        static let imageStubUser: String = "user_photo_stub"
        static let imageStubPhoto: String = "photo_stub_square"
        
        /// This is username text field placeholder
        /// Text: "Enter your username"
        static let placeholderUserName: String = "Enter your username"
        
        /// This is email text field placeholder
        /// Text: "Enter your email"
        static let placeholderEmail: String = "Enter your email"
        
        /// This is password text field placeholder
        /// Text: "Enter your password"
        static let placeholderPassword: String = "Enter your password"
        
        static let dummyText = "Lorem ipsum"
        static let dummyTextMedium = "Lorem ipsum dolor sit amet"
    }

    struct Design {
        struct AvatarSize {
            /// value: 40.0
            static let small: CGFloat = 40.0
            
            /// value: 100.0
            static let medium: CGFloat = 100
        }
        
        struct ButtonSize {
            /// Base button size: 44.0
            static let base: CGFloat = 44.0
            
            /// Small button size: 40.0
            static let small: CGFloat = 38.0
        }
        
        struct IconSize {
            /// Base icon size: 24.0
            static let base: CGFloat = 24.0
            
            /// Small icon size: 32.0
            static let medium: CGFloat = 32.0
        }
        
        struct Color {
            struct Primary {
                // example: static let Blue = UIColor.rgba(red: 0, green: 122, blue: 255, alpha: 1)
            }
            struct Secondary {
               
            }
            struct Grayscale {
                
            }
        }
        
        struct Corner {
            /// Small corner raduis: 8.0
            static let small: CGFloat = 8.0
            
            /// Base corner raduis: 10.0
            static let base: CGFloat = 10.0
        }
        
        struct Image {
            // example: static let icoStar = UIImage(named: "ico_imageName")
            
            /// This is base logo image file: "logo_instagram_svg"
            // static let imageLogo: Image = Image("logo_instagram_svg")
        }
        
        struct Font {
            // example: static let Body = UIFont.systemFont(ofSize: 16, weight: .regular)
        }
        
        struct Padding {
            /// Base app offset: 16.0
            static let base: CGFloat = 16.0
            
            /// Extra small app offset: 8.0
            static let extraSmall: CGFloat = 8.0
            
            /// Small app offset: 12.0
            static let small: CGFloat = 12.0
            
            /// Medium app offset: 24.0
            static let medium: CGFloat = 24.0
        }
    }
    
}
