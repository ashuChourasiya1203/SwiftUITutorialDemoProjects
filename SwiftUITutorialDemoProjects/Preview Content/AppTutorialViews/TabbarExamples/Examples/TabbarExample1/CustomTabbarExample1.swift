//
//  CustomTabbarExample1.swift
//  SwiftUITutorialDemoProjects
//
//  Created by Ashutosh Chourasiya on 17/02/25.
//

import SwiftUI

struct CustomTabbar: View {
    @Binding var selectedTab: TabbarExample1
    private var fillImage: String {
        return self.selectedTab.rawValue + ".fill"
    }
    
    var body: some View {
        VStack {
            HStack {
                ForEach(TabbarExample1.allCases, id: \.rawValue) { tab in
                    Spacer()
                    Image(systemName: self.selectedTab == tab ? self.fillImage : tab.rawValue)
                        .scaleEffect(self.selectedTab == tab ? 1.25 : 1.0)
                        .foregroundColor(self.selectedTab == tab ? tab.tabColor : .gray)
                        .font(.system(size: 22))
                        .onTapGesture {
                            withAnimation(.easeIn(duration: 0.1)) {
                                self.selectedTab = tab
                            }
                        }
                    Spacer()
                }
            }
            .frame(width: nil, height: 60)
            .background(.thinMaterial)
            .cornerRadius(10)
            .padding()
        }
    }
}

#Preview {
    CustomTabbar(selectedTab: .constant(.house))
}

