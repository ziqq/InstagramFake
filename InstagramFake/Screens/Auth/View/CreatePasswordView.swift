//
//  CreatePasswordView.swift
//  InstagramFake
//
//  Created by Anton Ustinoff on 31.08.2023.
//

import SwiftUI

struct CreatePasswordView: View {
    @Environment (\.dismiss) var dismiss
    @EnvironmentObject var oo: AuthOO
    
    private let screenWidth = UIScreen.main.bounds.width
    
    @State private var password = ""
    
    var body: some View {
        VStack(spacing: AppConstants.Design.Padding.small) {
            Text("Create password")
                .font(.title2)
                .fontWeight(.bold)
            
            Text("Your password must be a least 6 characters in length.")
                .font(.footnote)
                .multilineTextAlignment(.center)
                .foregroundColor(Color(.secondaryLabel))
                .padding(.horizontal, AppConstants.Design.Padding.medium)
            
            
            // MARK:- email field
            TextField(
                AppConstants.Content.placeholderPassword,
                text: $oo.password
            )
            .modifier(IGTextFieldModifier())
            .padding(.top)
            
            // MARK:- button
            NavigationLink {
                CompleteSignUpView()
            } label: {
                Text("Next")
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
            
            Spacer()
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

struct CreatePasswordView_Previews: PreviewProvider {
    static var previews: some View {
        CreatePasswordView().environmentObject(AuthOO())
    }
}
