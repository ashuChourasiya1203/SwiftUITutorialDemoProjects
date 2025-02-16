//
//  Extension+Colors.swift
//  SwiftUITutorialDemoProjects
//
//  Created by Ashutosh Chourasiya on 20/01/25.
//

import SwiftUI

extension Color {
    static var random: Color {
        return Color(
            red: Double.random(in: 0...1),
            green: Double.random(in: 0...1),
            blue: Double.random(in: 0...1)
        )
    }
}
