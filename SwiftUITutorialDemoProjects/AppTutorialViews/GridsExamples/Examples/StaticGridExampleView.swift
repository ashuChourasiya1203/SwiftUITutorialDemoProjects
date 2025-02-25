//
//  StaticGridExampleView.swift
//  SwiftUITutorialDemoProjects
//
//  Created by Ashutosh Chourasiya on 20/01/25.
//

import SwiftUI

struct StaticGridExampleView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .ignoresSafeArea()
                .foregroundStyle(Color.random.gradient.opacity(0.2))
            
            ScrollView {
                Grid(horizontalSpacing: 30, verticalSpacing: 30) {
                    MiniGridView()
                    MiniGridView()
                    MiniGridView()
                    MiniGridView()
                }
            }
            .ignoresSafeArea()
            .padding()
        }
    }
}

#Preview {
    StaticGridExampleView()
}

struct MiniGridView: View {
    var body: some View {
        GridRow {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.random)
                .frame(height: 100)
                .gridCellColumns(3)
        }
        Divider().foregroundStyle(Color.random.gradient)
        
        GridRow {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.random.gradient)
                .frame(width: 100, height: 100)
            
            VStack {
                Circle()
                    .foregroundStyle(.secondary)
                    .frame(width: 80, height: 80)
                Text("Ashutosh")
            }
            
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.random.gradient)
                .frame(width: 100, height: 100)
        }
        Divider().foregroundStyle(Color.random.gradient)
    }
}
