//
//  LoginView.swift
//  InstagramFake
//
//  Created by Anton Ustinoff on 30.08.2023.
//

import SwiftUI

struct LoginView: View {
    private let screenWidth = UIScreen.main.bounds.width;
    
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                
                // MARK:- logo
                Image(AppConstants.Content.logo)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 50)
                    .padding(.bottom)
                
                
                // MARK:- text fields
                VStack {
                    TextField(
                        AppConstants.Content.placeholderEmail,
                        text: $email
                    )
                    .autocapitalization(.none)
                    .modifier(IGTextFieldModifier())
                
                    SecureField(
                        AppConstants.Content.placeholderPassword,
                        text: $password
                    )
                    .modifier(IGTextFieldModifier())
                }
                
                Button {
                    print("--------> Show forgot password")
                } label: {
                    Text("Forgot password?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.top)
                        .padding(.trailing, AppConstants.Design.Padding.medium)
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
                
                Button {
                    print("--------> Login")
                } label: {
                    Text("Login")
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
                
                // MARK:- Or divider
                HStack {
                    Rectangle()
                        .frame(width: screenWidth / 2 - 45, height: 0.5)
                    
                    Text("OR")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    
                    Rectangle()
                        .frame(width: screenWidth / 2 - 45, height: 0.5)
                }
                .foregroundColor(Color(UIColor.separator))
                .padding(.vertical)
                
                Button {
                    print("--------> Continue with Facebook")
                } label: {
                    HStack(spacing: AppConstants.Design.Padding.extraSmall / 2) {
                        Image(AppConstants.Content.logoFacebook)
                            .resizable()
                            .scaledToFill()
                            .frame(
                                width: AppConstants.Design.IconSize.base,
                                height: AppConstants.Design.IconSize.base
                            )
                            
                        Text("Continue with Facebook")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .cornerRadius(AppConstants.Design.Corner.base)
                    }
                }
                
                Spacer()
                
                Divider()
                
                // MARK:- Dont have account button
                Button {
                    print("--------> Sign Up")
                } label: {
                    HStack(spacing: 0) {
                        Text("Don't have an account?") +
                        Text(" Sign Up").fontWeight(.semibold)
                    }
                    .font(.subheadline)
                }
                .padding(.vertical)
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
