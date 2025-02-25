//
//  LazyHGridExampleView.swift
//  SwiftUITutorialDemoProjects
//
//  Created by Ashutosh Chourasiya on 20/01/25.
//

import SwiftUI

struct LazyHGridExampleView: View {
    //let rows = Array(repeating: GridItem(.flexible(), spacing: 20), count: 3)
    //let rows = [GridItem(.adaptive(minimum: 80))]
    let rows = Array(repeating: GridItem(.fixed(100)), count: 3)
    var body: some View {
        ZStack {
            Rectangle()
                .ignoresSafeArea()
                .foregroundStyle(Color.random.gradient.opacity(0.4))
            
            ScrollView (.horizontal) {
                LazyHGrid(rows: self.rows) {
                    ForEach(GridMockData.color, id: \.self) {
                        RoundedRectangle(cornerRadius: 10)
                            .fill($0.gradient)
                            .frame(width: 100)
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    LazyHGridExampleView()
}
