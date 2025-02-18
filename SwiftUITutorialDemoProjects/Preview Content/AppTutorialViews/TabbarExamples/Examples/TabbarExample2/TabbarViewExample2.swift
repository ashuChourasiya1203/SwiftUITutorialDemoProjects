//
//  TabbarViewExample1.swift
//  SwiftUITutorialDemoProjects
//
//  Created by Ashutosh Chourasiya on 17/02/25.
//

import SwiftUI

struct TabbarViewExample2: View {
    @State var index = 0
    @State var isExpanded = false
    let screenWidth = UIScreen.main.bounds.width
    
    var body: some View {
        VStack(spacing: 0) {
            HStack(spacing: 20) {
                Text("Restaurant")
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .font(.title)
                
                Spacer()
                
                self.navigationBarButton(imageName: "magnifyingglass") {
                    print("Present Search View")
                }
                
                self.navigationBarButton(imageName: "bell.fill", height: 22) {
                    print("Present Notification List View")
                }
            }
            .padding()
            .background(.skyBlue)
            
            ZStack(alignment: .bottom) {
                GeometryReader { _ in
                    VStack {
                        Text("")
                    }
                }
                .background(.black.opacity(0.06))
                
                ZStack(alignment: .top) {
                    Circle()
                        .trim(from: 0.5, to: self.isExpanded ? 1 : 0.5)
                        .fill(Color(.skyBlue))
                        .frame(width: self.screenWidth, height: self.screenWidth)
                    
                    ZStack {
                        self.expandedViewButton(
                            imageName: "star",
                            title: "Favrouite",
                            xAxis: 0,
                            yAxis: 30
                        )
                        self.expandedViewButton(
                            imageName: "barcode.viewfinder",
                            title: "Scan",
                            xAxis: -100,
                            yAxis: 65
                        )
                        self.expandedViewButton(
                            imageName: "square.and.arrow.up",
                            title: "Share",
                            xAxis: 100,
                            yAxis: 65
                        )
                    }
                    .opacity(self.isExpanded ? 1 : 0)
                }
                .offset(y: self.screenWidth/1.6)
            }
            .background(Color(.lightBlue))
            .clipped()
            
            CustomTabbarExample2(index: self.$index, isExpanded: self.$isExpanded)
        }
    }
    
    @ViewBuilder
    private func navigationBarButton(
        imageName: String,
        height: CGFloat = 20,
        action: VoidClosure? = nil
    ) -> some View {
        Button {
            action?()
        } label: {
            Image(systemName: imageName)
                .resizable()
                .frame(width: 20, height: height)
                .foregroundStyle(.white)
        }
    }
    
    @ViewBuilder
    private func expandedViewButton(
        imageName: String,
        title: String,
        xAxis: CGFloat,
        yAxis: CGFloat,
        action: VoidClosure? = nil
    ) -> some View {
        Button {
            action?()
        } label: {
            VStack(spacing: 8) {
                Image(systemName: imageName)
                    .font(.title)
                    .foregroundStyle(.white)
                Text(title)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
            }
        }
        .offset(x: xAxis, y: yAxis)
    }
}

#Preview {
    TabbarViewExample2()
}
