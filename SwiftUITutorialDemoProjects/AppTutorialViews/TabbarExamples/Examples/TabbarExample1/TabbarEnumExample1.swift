//
//  TabbarEnumExample1.swift
//  SwiftUITutorialDemoProjects
//
//  Created by Ashutosh Chourasiya on 17/02/25.
//

import SwiftUI

enum TabbarExample1: String, CaseIterable {
    case house
    case message
    case person
    case leaf
    case gearshape
    
    var tabColor: Color {
        switch self {
        case .house: .teal
        case .message: .green
        case .person: .indigo
        case .leaf: .green
        case .gearshape: .orange
        }
    }
}
