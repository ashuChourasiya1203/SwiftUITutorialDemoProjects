//
//  TabbarExampleData.swift
//  SwiftUITutorialDemoProjects
//
//  Created by Ashutosh Chourasiya on 11/02/25.
//

import SwiftUI

struct TabbarExampleData {
    ///MARK: - Tabbar Examples
    let tabbarTopics: [TabbarExampleListModel] = [
        TabbarExampleListModel(
            title: "Tabbar Example1",
            description: "Check Out Simple Tabbar Example.",
            viewImage: UIImage(resource: .tabbarViewExample1),
            destination: .tabbarViewExample1
        ),
        TabbarExampleListModel(
            title: "Tabbar Example2",
            description: "Check Out Rotated design animated view in Tabbar view.",
            viewImage: UIImage(resource: .tabbarViewExample2),
            destination: .tabbarViewExample2
        ),
        TabbarExampleListModel(
            title: "Tabbar Example3",
            description: "Check Out Animated design animated view in Tabbar view.",
            viewImage: UIImage(resource: .tabbarViewExample2),
            destination: .tabbarViewExample2
        )
    ]
}
