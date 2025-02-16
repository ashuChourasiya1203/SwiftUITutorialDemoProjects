//
//  GridExampleListModel.swift
//  SwiftUITutorialDemoProjects
//
//  Created by Ashutosh Chourasiya on 11/02/25.
//

import SwiftUI

struct GridExampleListModel: Identifiable {
    let id = UUID()
    let title: String
    let description: String
    let viewImage: UIImage?
    let destination: GridExampleType
}

extension GridExampleListModel: ListRowViewModel {
    var destinationView: AnyView {
        return self.destination.view
    }
}

enum GridExampleType: CaseIterable {
    case lazyVGridExampleView
    case lazyHGridExampleView
    case staticGridExampleView
    
    var view: AnyView {
        switch self {
        case .lazyVGridExampleView: return AnyView(LazyVGridExampleView())
        case .lazyHGridExampleView: return AnyView(LazyHGridExampleView())
        case .staticGridExampleView: return AnyView(StaticGridExampleView())
        }
    }
}
