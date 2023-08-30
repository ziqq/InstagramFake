//
//  FeedCellView.swift
//  InstagramFake
//
//  Created by Anton Ustinoff on 30.08.2023.
//

import SwiftUI

struct FeedCellView: View {
    var body: some View {
        VStack {
            // MARK:- image + username
            HStack  {
                Image("hulk")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                
                Text("Hulk")
                    .font(.footnote)
                    .fontWeight(.semibold)
                
                Spacer()
            }
            .padding(.leading)
            
            // MARK:- post image
            Image("hulk")
                .resizable()
                .scaledToFill()
                .frame(height: 400)
                .clipShape(Rectangle())
            
            
            // MARK:- action buttons
            HStack(spacing: 8) {
                Button {
                    print("--------> Like post")
                } label: {
                    Image(systemName: "heart").imageScale(.large)
                }
                
                Button {
                    print("--------> Like post")
                } label: {
                    Image(systemName: "message").imageScale(.large)
                }
                
                Button {
                    print("--------> Like post")
                } label: {
                    Image(systemName: "paperplane").imageScale(.large)
                }
                
                Spacer()
            }
            .foregroundColor(.black)
            .padding(.horizontal, 8)
            .padding(.top, 2)
            
            // MARK:- likes label
            Text("32 likes")
                .font(.footnote)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
                .padding(.top, 1)
            
            // MARK:- caption label
            HStack {
                Text("hulk ").fontWeight(.semibold) +
                Text("This is some test caption for now, this is long string of strings")
            }
            .font(.footnote)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 10)
            .padding(.top, 1)
            
            // MARK:- time stamp
            Text("6h ago")
                .font(.footnote)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
                .padding(.top, 1)
                .foregroundColor(.gray)
        }
    }
}

struct FeedCellView_Previews: PreviewProvider {
    static var previews: some View {
        FeedCellView()
    }
}
