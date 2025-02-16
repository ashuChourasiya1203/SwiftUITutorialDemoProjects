//
//  ProfileCardTabbar.swift
//  ProfileCardExample
//
//  Created by Ashutosh Chourasiya on 06/02/25.
//

import SwiftUI

struct ProfileCardTabbar: View {
    @Binding var selectedTab: ProfileCardTabType
    
    var body: some View {
        HStack(alignment: .center) {
            Button {
                self.selectedTab = .chats
            } label: {
                ProfileCardTabbarButtonView(
                    isActive: self.selectedTab == .chats,
                    imageName: "bubble.left",
                    title: "Chats"
                )
            }
            .tint(.gray)
            
            Button {
                //We can navigate to some other screen on click of this button
            } label: {
                VStack(alignment: .center, spacing: 4) {
                    Image(systemName: "plus.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 35, height: 35)
                    
                    Text("New Chat")
                }
            }
            .tint(.blue)
            
            Button {
                self.selectedTab = .contacts
            } label: {
                ProfileCardTabbarButtonView(
                    isActive: self.selectedTab == .contacts,
                    imageName: "person",
                    title: "Contacts"
                )
            }
            .tint(.gray)
        }
        .frame(height: 82)
        .padding(.bottom, 15)
    }
}
