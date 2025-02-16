//
//  TopicListView.swift
//  SwiftUITutorialDemoProjects
//
//  Created by Ashutosh Chourasiya on 15/01/25.
//

import SwiftUI

struct TopicListView: View {
    @Environment(\.colorScheme) private var systemAppearance
    
    var body: some View {
        NavigationStack {
            Text("Explore Topics")
                .font(.largeTitle).bold()
                .padding(.bottom, 5)
                .foregroundColor(.primary)
                .shadow(
                    color: Color(self.systemAppearance == .dark ? .white : .black).opacity(0.5),
                    radius: 3, x: 3, y: 3
                )
            
            ScrollView {
                ForEach(TopicListViewData().topics) { topicModel in
                    CommonListCellRowView(topicModel: topicModel)
                }
                .padding(.horizontal)
            }
        }
    }
}

#Preview {
    TopicListView()
}
