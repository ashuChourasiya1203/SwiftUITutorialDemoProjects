//
//  GridMockData.swift
//  SwiftUITutorialDemoProjects
//
//  Created by Ashutosh Chourasiya on 20/01/25.
//

import SwiftUI

struct GridMockData {
    static var color: [Color] {
        var array: [Color] = []
        for _ in 0..<30 {
            array.append(Color.random)
        }
        return array
    }
    
    ///MARK: - Grid Examples
    let gridTopics: [GridExampleListModel] = [
        GridExampleListModel(
            title: "LazyVGrid Grid Example",
            description: "This tutorial is for usage of LazyVGrid Grid.",
            viewImage: UIImage(resource: .lazyVGridExample),
            destination: .lazyVGridExampleView
        ),
        GridExampleListModel(
            title: "LazyHGrid Grid Example",
            description: "This tutorial is for usage of LazyHGrid Grid.",
            viewImage: UIImage(resource: .lazyHGridExample),
            destination: .lazyHGridExampleView
        ),
        GridExampleListModel(
            title: "Static Grid Example",
            description: "This tutorial is for usage of Static Grid.",
            viewImage: UIImage(resource: .staticGridExample),
            destination: .staticGridExampleView
        )
    ]
}
