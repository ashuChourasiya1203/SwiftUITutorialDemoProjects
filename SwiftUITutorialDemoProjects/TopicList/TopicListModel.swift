//
//  TopicListModel.swift
//  SwiftUITutorialDemoProjects
//
//  Created by Ashutosh Chourasiya on 15/01/25.
//

import SwiftUI

struct TopicListModel: Identifiable {
    let id = UUID()
    let title: String
    let description: String
    let viewImage: UIImage?
    let destination: TopicExampleType
}

extension TopicListModel: ListRowViewModel {
    var destinationView: AnyView {
        return self.destination.view
    }
}

enum TopicExampleType: CaseIterable {
    case groupBoxExampleView
    case reorderListExampleView
    case gridExampleListView
    case scrollViewPagingAnimation
    case weatherAppExampleView
    case profileCardListView
    case tabbarExampleListView
    
    var view: AnyView {
        switch self {
        case .groupBoxExampleView: return AnyView(GroupBoxExampleView())
        case .reorderListExampleView: return AnyView(ReorderListExampleView())
        case .gridExampleListView: return AnyView(GridAllExampleView())
        case .scrollViewPagingAnimation: return AnyView(ScrollViewPagingAnimation())
        case .weatherAppExampleView: return AnyView(HomeWeatherView())
        case .profileCardListView: return AnyView(ProfileCardListView())
        case .tabbarExampleListView: return AnyView(TabbarExampleListView())
        }
    }
}
