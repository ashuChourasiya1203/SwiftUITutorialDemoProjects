//
//  TabbarViewExample3.swift
//  SwiftUITutorialDemoProjects
//
//  Created by Ashutosh Chourasiya on 17/02/25.
//

import SwiftUI

struct TabbarViewExample3: View {
    @State private var selectedTab: TabExample3 = .home
    @Namespace private var animation
    @State private var tabShapePosition: CGPoint = .zero
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        VStack(spacing: 0) {
            TabView(selection: self.$selectedTab) {
                Text("Home").tag(TabExample3.home)
                Text("Services").tag(TabExample3.services)
                Text("Partners").tag(TabExample3.partners)
                Text("Activity").tag(TabExample3.activity)
            }
            CustomTabbar()
        }
    }
    
    @ViewBuilder
    func CustomTabbar(
        _ tint: Color = Color("skyBlue"),
        _ inactiveTint: Color = .mediumBlue
    ) -> some View {
        HStack(alignment: .bottom, spacing: 0) {
            ForEach(TabExample3.allCases, id: \.rawValue ) {
                TabItem(
                    tint: tint,
                    inactiveTint: inactiveTint,
                    tab: $0,
                    animation: self.animation,
                    selectedTab: self.$selectedTab,
                    position: self.$tabShapePosition
                )
            }
        }
        .padding(.horizontal, 15)
        .padding(.vertical, 10)
        .background {
            TabShapeExample3(midPoint: self.tabShapePosition.x)
                .fill(.white)
                .ignoresSafeArea()
                .shadow(color: tint.opacity(0.2), radius: 5, x: 0, y: -5)
                .blur(radius: 2)
                .padding(.top, 25)
        }
        .animation(
            .interactiveSpring(
                response: 0.6,
                dampingFraction: 0.7,
                blendDuration: 0.7
            ),
            value: self.selectedTab
        )
    }
}

#Preview {
    TabbarViewExample3()
}
