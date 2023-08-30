//
//  ProfileView.swift
//  InstagramFake
//
//  Created by Anton Ustinoff on 29.08.2023.
//

import SwiftUI

struct ProfileView: View {
    private let lightImpact = UIImpactFeedbackGenerator(style: .light)
    
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
    ]
    
    private let imageDimention: CGFloat = (UIScreen.main.bounds.width / 3) - 1
    
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    // header
                    VStack() {
                        HStack {
                            Image("hulk")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 80, height: 80)
                                .clipShape(Circle())
                            
                            Spacer()
                            
                            HStack(spacing: 8) {
                                UserStatView(value: 3, title: "Posts")
                                UserStatView(value: 12, title: "Followers")
                                UserStatView(value: 24, title: "Following")
                            }
                        }.padding(.horizontal)
                        
                        VStack(alignment: .leading, spacing: 0) {
                            Text("Bruce Banner")
                                .font(.footnote)
                                .fontWeight(.semibold)
                            
                            Text("Wakanda Forever")
                                .font(.footnote)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal)
                        
                        Button {
                            print("Edit Profile")
                        } label: {
                            Text("Edit Profile")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .frame(width: 360, height: 32)
                                .foregroundColor(.black)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 6)
                                        .stroke(Color.gray, lineWidth: 1)
                                )
                            
                        }.padding(.top, 16)
                    }
                    
                    // post grid view
                    LazyVGrid(columns: gridItems, spacing: 1) {
                        ForEach(0 ... 15, id: \.self) { index in
                            Image("hulk")
                                .resizable()
                                .scaledToFill()
                                .frame(width: imageDimention, height: imageDimention)
                                .clipped()
                        }
                    }
                }
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        lightImpact.impactOccurred()
                        print("--------> Pressed")
                    } label: {
                        Image(systemName: "line.3.horizontal")
                            .foregroundColor(.black)
                    }
                }
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
