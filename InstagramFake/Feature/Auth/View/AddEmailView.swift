//
//  AddEmailView.swift
//  InstagramFake
//
//  Created by Anton Ustinoff on 31.08.2023.
//

import SwiftUI

struct AddEmailView: View {
    @Environment (\.dismiss) var dismiss
    @EnvironmentObject var oo: AuthOO
    
    private let screenWidth = UIScreen.main.bounds.width
    
    @State private var email = ""
    
    var body: some View {
            VStack(spacing: AppConstants.Design.Padding.small) {
                Text("Add your email")
                    .font(.title2)
                    .fontWeight(.bold)
                
                Text("You'll use this email to sign in to your account")
                    .font(.footnote)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(.secondaryLabel))
                    .padding(.horizontal, AppConstants.Design.Padding.medium)
                
                
                // MARK:- email field
                TextField(
                    AppConstants.Content.placeholderEmail,
                    text: $oo.email
                )
                .autocapitalization(.none)
                .modifier(IGTextFieldModifier())
                .padding(.top)
                
                // MARK:- button
                NavigationLink {
                    CreateUserNameView().navigationBarBackButtonHidden(true)
                } label: {
                    Text("Next")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(
                            width: screenWidth - AppConstants.Design.Padding.medium * 2,
                            height: AppConstants.Design.ButtonSize.regular
                        )
                        .background(Color(.systemBlue))
                        .foregroundColor(.white)
                        .cornerRadius(AppConstants.Design.Corner.regular)
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

struct AddEmailView_Previews: PreviewProvider {
    static var previews: some View {
        AddEmailView().environmentObject(AuthOO())
    }
}
