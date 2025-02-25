//
//  ProfileCardTabbarView.swift
//  ProfileCardExample
//
//  Created by Ashutosh Chourasiya on 06/02/25.
//

import SwiftUI

enum ProfileCardTabType: Int  {
    case chats = 0
    case contacts = 1
}

struct ProfileCardTabbarView: View {
    @State private var selectedTab: ProfileCardTabType = .contacts
    
    var body: some View {
        VStack {
            Spacer()
            ProfileCardTabbar(selectedTab: self.$selectedTab)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ProfileCardListView()
}
