//
//  TopicListMockData.swift
//  SwiftUITutorialDemoProjects
//
//  Created by Ashutosh Chourasiya on 20/01/25.
//

import UIKit

struct TopicListViewData {
    ///MARK: - All Examples
    let topics: [TopicListModel] = [
        TopicListModel(
            title: "GroupBox Examples",
            description: "Simple Music Box Example By Using GroupBox",
            viewImage: UIImage(resource: .groupBoxExample),
            destination: .groupBoxExampleView
        ),
        TopicListModel(
            title: "Reorder List Example",
            description: "This tutorial is for reording the list using different methods.",
            viewImage: UIImage(resource: .reorderListExample),
            destination: .reorderListExampleView
        ),
        TopicListModel(
            title: "Grid Examples",
            description: "Explore Several types of Grid Examples.",
            viewImage: UIImage(resource: .gridListExample),
            destination: .gridExampleListView
        ),
        TopicListModel(
            title: "ScrollView Paging Animation",
            description: "This tutorial is for show case scrollView Paging animation effect.",
            viewImage: UIImage(resource: .pagingAnimationExample),
            destination: .scrollViewPagingAnimation
        ),
        TopicListModel(
            title: "Weather App",
            description: "Simple Weather App With Light & Dark Mode Support.",
            viewImage: UIImage(resource: .weatherAppExample),
            destination: .weatherAppExampleView
        ),
        TopicListModel(
            title: "Profile Card App",
            description: "Check Out User Profile Card With Tabbar Example.",
            viewImage: UIImage(resource: .profileCardListExample),
            destination: .profileCardListView
        ),
        TopicListModel(
            title: "Tabbar Examples",
            description: "Check Out Some Tabbar Example.",
            viewImage: UIImage(resource: .tabbarListExample),
            destination: .tabbarExampleListView
        )
    ]
}
