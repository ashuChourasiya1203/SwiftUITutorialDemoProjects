//
//  TabItemExample3.swift
//  SwiftUITutorialDemoProjects
//
//  Created by Ashutosh Chourasiya on 17/02/25.
//

import SwiftUI

struct TabItem: View {
    var tint: Color
    var inactiveTint: Color
    var tab: TabExample3
    var animation: Namespace.ID
    @Binding var selectedTab: TabExample3
    @Binding var position: CGPoint
    @State private var tabPosition: CGPoint = .zero
    
    var body: some View {
        VStack(spacing: 5) {
            Image(systemName: self.tab.systemImage)
                .font(.title2)
                .foregroundStyle(self.selectedTab == self.tab ? .white : self.inactiveTint)
                .frame(
                    width: self.selectedTab == self.tab ? 58 : 35,
                    height: self.selectedTab == self.tab ? 58 : 35
                )
                .background {
                    if self.selectedTab == self.tab {
                        Circle()
                            .fill(self.tint.gradient)
                            .matchedGeometryEffect(id: "SELECTEDTAB", in: self.animation)
                    }
                }
            
            Text(self.tab.rawValue)
                .font(.caption)
                .foregroundStyle(self.selectedTab == self.tab ? self.tint : .gray)
        }
        .frame(maxWidth: .infinity)
        .containerShape(Rectangle())
        .viewPosition(completion: { rect in
            self.tabPosition.x = rect.midX
            
            if self.selectedTab == self.tab {
                self.position.x = rect.midX
            }
        })
        .onTapGesture {
            self.selectedTab = self.tab
            
            withAnimation(.interactiveSpring(
                response: 0.6,
                dampingFraction: 0.7,
                blendDuration: 0.7
            )) {
                self.position.x = self.tabPosition.x
            }
        }
    }
}
