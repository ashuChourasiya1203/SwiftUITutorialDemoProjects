//
//  CardListExample.swift
//  ProfileCardExample
//
//  Created by Ashutosh Chourasiya on 07/02/25.
//

import SwiftUI

struct ProfileCardListView: View {
    var body: some View {
        NavigationStack {
            List(ProfileCardMockData.persons) { person in
                ProfileCardView(person: person).listRowSeparator(.hidden)
            }
            .padding(.bottom, 70)
            .listStyle(PlainListStyle())
            .navigationTitle("Profiles")
            .overlay {
                ProfileCardTabbarView()
            }
        }
    }
}

#Preview {
    ProfileCardListView()
}
