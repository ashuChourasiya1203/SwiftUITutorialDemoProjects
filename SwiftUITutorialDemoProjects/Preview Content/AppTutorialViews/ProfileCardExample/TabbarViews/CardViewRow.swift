//
//  CardViewRow.swift
//  ProfileCardExample
//
//  Created by Ashutosh Chourasiya on 07/02/25.
//

import SwiftUI

struct ProfileCardView: View {
    let person: Person
    
    var body: some View {
        VStack {
            ZStack {
                Image(self.person.bannerImage)
                    .resizable()
                    .scaledToFill()
                    .frame(height: 100)
                    .clipped()
                
                Image(self.person.profileImage)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                    .clipShape(Circle())
                    .offset(y: 50)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
            }
            .overlay(alignment: .topTrailing) {
                Button {
                    
                } label: {
                    Image(systemName: "xmark.circle.fill")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundStyle(.white)
                        .padding(6)
                }
            }
            
            VStack {
                Button {
                    
                } label: {
                    Text("Follow")
                        .font(.callout)
                        .padding(.vertical, 4)
                        .padding(.horizontal)
                        .overlay {
                            Capsule().stroke(lineWidth: 2)
                        }
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding()
                
                HStack {
                    Text(self.person.name)
                        .fontWeight(.bold)
                    
                    Text(". \(self.person.followerCount)")
                        .foregroundStyle(.secondary)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading)
                
                Text(self.person.jobTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding([.leading, .bottom])
            }
        }
        .background(Color(.tertiarySystemFill))
        .cornerRadius(12)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    if let person = ProfileCardMockData.persons.randomElement() {
        ProfileCardView(person: person)
    }
}
