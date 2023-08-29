//
//  PersonRowView.swift
//  FirstSwiftApp
//
//  Created by Anton Ustinoff on 15.06.2023.
//

import SwiftUI

struct PersonRowView: View {
    var person: PersonalDataObject
    
    var body: some View {
        HStack {
            VStack (alignment: .leading, spacing: 4) {
                Text(person.name)
                
                Group {
                    Text(person.phone)
                    Text(person.email)
                }.foregroundColor(.gray)
            }
            
            Spacer()
            Image(systemName: "chevron.right")
        }.padding(.vertical, 4)
    }
}



struct PersonRowView_Previews: PreviewProvider {
    static var previews: some View {
        PersonRowView(person: PersonalDataObject.mock()).previewLayout(.sizeThatFits)
    }
}
