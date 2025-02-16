//
//  GridAllExampleView.swift
//  SwiftUITutorialDemoProjects
//
//  Created by Ashutosh Chourasiya on 11/02/25.
//

import SwiftUI

struct GridAllExampleView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                ForEach(GridMockData().gridTopics) { topicModel in
                    CommonListCellRowView(topicModel: topicModel)
                }
                .padding(.horizontal)
            }
            .navigationTitle("Grid Examples")
        }
    }
}

#Preview {
    GridAllExampleView()
}
