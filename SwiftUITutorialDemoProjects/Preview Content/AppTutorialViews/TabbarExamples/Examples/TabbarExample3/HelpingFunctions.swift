//
//  HelperFunctions.swift
//  SwiftUITutorialDemoProjects
//
//  Created by Ashutosh Chourasiya on 17/02/25.
//

import SwiftUI

struct PositionKeyExample3: PreferenceKey {
    static var defaultValue: CGRect = .zero
    static func reduce(value: inout CGRect, nextValue: () -> CGRect) {
        value = nextValue()
    }
}

extension View {
    @ViewBuilder
    func viewPosition(completion: @escaping (CGRect) -> Void) -> some View {
        self.overlay {
            GeometryReader {
                Color.clear
                    .preference(key: PositionKeyExample3.self, value: $0.frame(in: .global))
                    .onPreferenceChange(PositionKeyExample3.self, perform: completion)
            }
        }
    }
}
