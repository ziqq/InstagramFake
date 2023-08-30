//
//  IGTextFieldModifier.swift
//  IstagramFake
//
//  Created by Anton Ustinoff on 30.08.2023.
//

import SwiftUI

struct IGTextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(AppConstants.Design.Padding.small)
            .background(Color(.systemGray6))
            .cornerRadius(AppConstants.Design.Corner.base)
            .padding(.horizontal, AppConstants.Design.Padding.medium)
    }
}
