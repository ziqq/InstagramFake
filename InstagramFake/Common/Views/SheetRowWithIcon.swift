//
//  SheetRowWithIcon.swift
//  InstagramFake
//
//  Created by Anton Ustinoff on 14.09.2023.
//

import SwiftUI

struct SheetRowWithIcon: View {
    var icon: String
    var text: String
    
    var body: some View {
        Label{
            Text(text)
        } icon: {
            Image(systemName: icon)
                .resizable()
                .scaledToFit()
                .frame(
                    width: AppConstants.Design.IconSize.regular,
                    height: AppConstants.Design.IconSize.regular
                )
        }
        .labelStyle(.titleAndIcon)
    }
}

struct SheetRowWithIcon_Previews: PreviewProvider {
    static var previews: some View {
        SheetRowWithIcon(icon: "gear", text: "Settings")
    }
}
