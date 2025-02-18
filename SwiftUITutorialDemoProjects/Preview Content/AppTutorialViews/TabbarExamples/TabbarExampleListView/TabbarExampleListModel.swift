//
//  TabbarExampleListModel.swift
//  SwiftUITutorialDemoProjects
//
//  Created by Ashutosh Chourasiya on 11/02/25.
//

import SwiftUI

struct TabbarExampleListModel: Identifiable {
    let id = UUID()
    let title: String
    let description: String
    let viewImage: UIImage?
    let destination: TabbarExampleType
}

extension TabbarExampleListModel: ListRowViewModel {
    var destinationView: AnyView {
        return self.destination.view
    }
}

enum TabbarExampleType: CaseIterable {
    case tabbarViewExample1
    case tabbarViewExample2
    case tabbarViewExample3
    
    var view: AnyView {
        switch self {
        case .tabbarViewExample1: return AnyView(TabbarViewExample1())
        case .tabbarViewExample2: return AnyView(TabbarViewExample2())
        case .tabbarViewExample3: return AnyView(TabbarViewExample3())
        }
    }
}
