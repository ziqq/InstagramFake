//
//  CreateUserNameView.swift
//  InstagramFake
//
//  Created by Anton Ustinoff on 31.08.2023.
//

import SwiftUI

struct CreateUserNameView: View {
    @Environment (\.dismiss) var dismiss
    @EnvironmentObject var oo: AuthOO
    
    private let screenWidth = UIScreen.main.bounds.width
    
    @State private var username = ""
    
    var body: some View {
        VStack(spacing: AppConstants.Design.Padding.small) {
            Text("Create username")
                .font(.title2)
                .fontWeight(.bold)
            
            Text("Pick a username for your new account. You can always change it later.")
                .font(.footnote)
                .multilineTextAlignment(.center)
                .foregroundColor(Color(.secondaryLabel))
                .padding(.horizontal, AppConstants.Design.Padding.medium)
            
            
            // MARK:- email field
            TextField(
                AppConstants.Content.placeholderUserName,
                text: $oo.userName
            )
            .autocapitalization(.none)
            .modifier(IGTextFieldModifier())
            .padding(.top)
            
            // MARK:- button
            NavigationLink {
                CreatePasswordView().navigationBarBackButtonHidden(true)
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

struct CreateUserNameView_Previews: PreviewProvider {
    static var previews: some View {
        CreateUserNameView().environmentObject(AuthOO())
    }
}
