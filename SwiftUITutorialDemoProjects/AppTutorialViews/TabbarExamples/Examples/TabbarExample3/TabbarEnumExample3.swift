//
//  TabbarExample3.swift
//  SwiftUITutorialDemoProjects
//
//  Created by Ashutosh Chourasiya on 17/02/25.
//

import SwiftUI

enum TabExample3: String, CaseIterable {
    case home = "Home"
    case services = "Services"
    case partners = "Partners"
    case activity = "Activity"
    
    var systemImage: String {
        switch self {
        case .home: return "house"
        case .services: return "envelope.open.badge.clock"
        case .partners: return "hand.raised"
        case .activity: return "bell"
        }
    }
    
    var index: Int {
       return TabExample3.allCases.firstIndex(of: self) ?? 0
    }
}
