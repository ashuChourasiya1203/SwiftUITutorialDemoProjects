//
//  ScrollViewPagingAnimation.swift
//  SwiftUITutorialDemoProjects
//
//  Created by Ashutosh Chourasiya on 21/01/25.
//

import SwiftUI

fileprivate struct Item: Identifiable {
    let id = UUID()
    let color: Color
}

fileprivate struct MockData {
    static func items(_ dataCount: Int = 25) -> [Item] {
        var itemArray: [Item] = []
        for _ in 0...dataCount {
            itemArray.append(Item(color: Color.random))
        }
        return itemArray
    }
}

struct ScrollViewPagingAnimation: View {
    let dataCount = (20...35).randomElement() ?? 25
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var body: some View {
        ZStack {
            Rectangle()
                .ignoresSafeArea()
                .foregroundStyle(Color.random.gradient.opacity(0.3))
            
            VStack {
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(MockData.items(self.dataCount)) { item in
                            RoundedRectangle(cornerRadius: 10)
                                .containerRelativeFrame(
                                    .horizontal,
                                    count: self.verticalSizeClass == .regular ? 2 : 4,
                                    spacing: 20
                                )
                                .foregroundStyle(item.color.gradient)
                                .scrollTransition { content, phase in
                                    content
                                        .opacity(phase.isIdentity ? 1.0 : 0.2)
                                        .scaleEffect(
                                            x: phase.isIdentity ? 1.0 : 0.6,
                                            y: phase.isIdentity ? 1.0 : 0.6
                                        )
                                        .offset(y: phase.isIdentity ? 0 : 50)
                                }
                        }
                    }
                }
                .contentMargins(16, for: .scrollContent)
                .scrollTargetBehavior(.viewAligned) //This is for adding paging in scroll item.
                
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(MockData.items(self.dataCount)) { item in
                            Circle()
                                .containerRelativeFrame(
                                    .horizontal,
                                    count: self.verticalSizeClass == .regular ? 2 : 4,
                                    spacing: 15
                                )
                                .foregroundStyle(item.color.gradient)
                                .scrollTransition { content, phase in
                                    content
                                        .opacity(phase.isIdentity ? 1.0 : 0.2)
                                        .scaleEffect(
                                            x: phase.isIdentity ? 1.0 : 0.6,
                                            y: phase.isIdentity ? 1.0 : 0.6
                                        )
                                        .offset(y: phase.isIdentity ? 0 : 50)
                                }
                        }
                    }
                    .scrollTargetLayout()
                }
                .contentMargins(20, for: .scrollContent)
                .scrollTargetBehavior(.paging) //This is for adding paging in scroll item.
            }
        }
    }
}

#Preview {
    ScrollViewPagingAnimation()
}
