//
//  LazyVGridExampleView.swift
//  SwiftUITutorialDemoProjects
//
//  Created by Ashutosh Chourasiya on 18/01/25.
//
import SwiftUI

struct LazyVGridExampleView: View {
    let columns = Array(repeating: GridItem(.flexible(), spacing: 20), count: 3)
    //let columns = [GridItem(.adaptive(minimum: 80))]
    //let columns = Array(repeating: GridItem(.fixed(100), spacing: 20), count: 3)
    
    var body: some View {
        ZStack {
            Rectangle()
                .ignoresSafeArea()
                .foregroundStyle(Color.random.gradient.opacity(0.4))
            
            ScrollView {
                LazyVGrid(columns: self.columns, spacing: 20, pinnedViews: .sectionHeaders) {
                    Section {
                        ForEach(GridMockData.color, id: \.self) {
                            RoundedRectangle(cornerRadius: 10)
                                .fill($0.gradient)
                                .frame(width: .pi * 40, height: .pi * 40)
                        }
                    } header: {
                        Text("Favorites Color")
                            .font(.largeTitle.bold())
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    
                    Section {
                        ForEach(GridMockData.color, id: \.self) {
                            RoundedRectangle(cornerRadius: 10)
                                .fill($0.gradient)
                                .frame(width: .pi * 40, height: .pi * 40)
                        }
                    } header: {
                        Text("Don't Like Color")
                            .font(.largeTitle.bold())
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    LazyVGridExampleView()
}
