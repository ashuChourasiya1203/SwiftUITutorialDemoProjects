//
//  TabbarViewExample1.swift
//  CustomTabbarExamples
//
//  Created by Ashutosh Chourasiya on 10/02/25.
//
import SwiftUI

struct TabbarViewExample1: View {
    @State private var selectedTab: TabbarExample1 = .house
    
    init() {
        UITabBar.appearance().isHidden = true
    }

    var body: some View {
        VStack {
            self.CenterView()
            CustomTabbar(selectedTab: self.$selectedTab)
        }
        .padding(.bottom, 15)
        .ignoresSafeArea()
    }
    
    func CenterView() -> some View {
        TabView(selection: self.$selectedTab) {
            ForEach(TabbarExample1.allCases, id: \.rawValue) { tab in
                VStack {
                    Image(systemName: "\(tab.rawValue).fill")
                        .resizable()
                        .frame(width: 35, height: 35)
                    
                    Text("\(tab.rawValue.capitalized)")
                        .bold()
                        .font(.title)
                        .animation(nil, value: self.selectedTab)
                }
                .tag(tab)
                .foregroundStyle(tab.tabColor)
             }
        }
    }
}
