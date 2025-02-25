//
//  TabbarExampleListView.swift
//  SwiftUITutorialDemoProjects
//
//  Created by Ashutosh Chourasiya on 11/02/25.
//

import SwiftUI

struct TabbarExampleListView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                ForEach(TabbarExampleData().tabbarTopics) { topic in
                    CommonListCellRowView(topicModel: topic)
                }
                .padding(.horizontal)
            }
            .navigationTitle("Tabbar Examples")
        }
    }
}

#Preview {
    TabbarExampleListView()
}
