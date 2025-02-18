//
//  CustomTabbarExample2.swift
//  SwiftUITutorialDemoProjects
//
//  Created by Ashutosh Chourasiya on 17/02/25.
//

import SwiftUI

struct CustomTabbarExample2: View {
    @Binding var index: Int
    @Binding var isExpanded: Bool
    
    var body: some View {
        HStack(spacing: 0) {
            self.tabbarItemButton(imageName: "house.fill", tabTitle: "Home", index: 0)
            
            Spacer(minLength: 0)
            
            self.tabbarItemButton(imageName: "cart.fill", tabTitle: "Cart", index: 1)
            
            Spacer(minLength: 0)
            
            self.centerButton()
            
            Spacer(minLength: 0)
            
            self.tabbarItemButton(imageName: "bag.fill", tabTitle: "Order", index: 2)
            
            Spacer(minLength: 0)
            
            self.tabbarItemButton(imageName: "person.fill", tabTitle: "You", index: 3)
        }
        .padding(.top, 10)
        .padding(.horizontal, 20)
        .background(.white)
    }
    
    @ViewBuilder
    fileprivate func tabbarItemButton(
        imageName: String,
        tabTitle: String,
        index: Int
    ) -> some View {
        Button {
            self.index = index
        } label: {
            VStack {
                Image(systemName: imageName)
                    .resizable()
                    .frame(width: 25, height: 25)
                
                Text(tabTitle)
                    .font(.footnote)
            }
            .foregroundStyle(self.index == index ? .skyBlue : .black.opacity(0.3))
        }
    }
    
    @ViewBuilder
    fileprivate func centerButton() -> some View {
        Button {
            withAnimation(Animation.default.speed(0.8)) {
                self.isExpanded.toggle()
            }
        } label: {
            Image(systemName: self.isExpanded ? "rosette" : "xmark")
                .font(.title)
                .foregroundStyle(.skyBlue)
                .padding()
                .background(.white)
                .clipShape(Circle())
                .shadow(radius: 4)
        }
        .offset(y: -35)
    }
}
