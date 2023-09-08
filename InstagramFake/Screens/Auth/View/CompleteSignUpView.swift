//
//  CompleteSignUpView.swift
//  InstagramFake
//
//  Created by Anton Ustinoff on 31.08.2023.
//

import SwiftUI

struct CompleteSignUpView: View {
    @Environment (\.dismiss) var dismiss
    @EnvironmentObject var oo: AuthOO
    
    private let screenWidth = UIScreen.main.bounds.width
    
    var body: some View {
        VStack(spacing: AppConstants.Design.Padding.small) {
            Text("Welcome to Instagram,\nyour \(oo.username)")
                .font(.title2)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
            
            Text("Click bellow to complete registration and start using Instagram")
                .font(.footnote)
                .multilineTextAlignment(.center)
                .foregroundColor(Color(.secondaryLabel))
                .padding(.horizontal, AppConstants.Design.Padding.medium)
            
            // MARK:- button
            Button {
                Task { try await oo.createUser() }
            } label: {
                Text("Complete Sing Up")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(
                        width: screenWidth - AppConstants.Design.Padding.medium * 2,
                        height: AppConstants.Design.ButtonSize.base
                    )
                    .background(Color(.systemBlue))
                    .foregroundColor(.white)
                    .cornerRadius(AppConstants.Design.Corner.base)
                    .padding(.top)
            }
        }
        .padding(.top, AppConstants.Design.Padding.medium)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Image(systemName: "chevron.left")
                    .imageScale(.large)
                    .onTapGesture {
                        dismiss()
                    }
            }
        }
    }
}

struct CompleteSignUpView_Previews: PreviewProvider {
    static var previews: some View {
        CompleteSignUpView().environmentObject(AuthOO())
    }
}
