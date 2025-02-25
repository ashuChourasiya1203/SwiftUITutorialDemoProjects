//
//  GroupBoxExample.swift
//  SwiftUITutorialDemoProjects
//
//  Created by Ashutosh Chourasiya on 16/01/25.
//

import SwiftUI

struct GroupBoxExampleView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundStyle(.pink.gradient.opacity(0.8))
                .ignoresSafeArea()
            
            VStack(spacing: 40) {
                GroupBox("Group Box Example SwiftUI") {
                    Text("This is content Group Box.")
                }
                .groupBoxStyle(.music)
                
                GroupBox {
                    GroupBox {
                        MusicPlayerBox()
                    }
                    .groupBoxStyle(.music)
                } label: {
                    Label("Now Playing..", systemImage: "music.note")
                }
                .groupBoxStyle(.music)
                
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    GroupBoxExampleView()
}
