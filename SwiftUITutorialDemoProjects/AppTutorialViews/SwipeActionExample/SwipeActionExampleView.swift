//
//  SwipeActionViewExample.swift
//  SwiftUITutorialDemoProjects
//
//  Created by Ashutosh Chourasiya on 19/02/25.
//

import SwiftUI

struct SwipeActionViewExample: View {
    var body: some View {
        NavigationStack {
            VStack {
                Rectangle()
                    .fill(.black.gradient)
                    .frame(height: 50)
                    .swipeActions {
                        Action(symbolImage: "square.and.arrow.up.fill", tint: .white, background: .blue) { resetPosition in
                            
                        }
                        Action(symbolImage: "square.and.arrow.down.fill", tint: .white, background: .purple) { resetPosition in
                            
                        }
                        Action(symbolImage: "trash.fill", tint: .white, background: .red) { resetPosition in
                            
                        }
                    }
            }
            .padding()
            .navigationTitle("Custom Swipe Action")
        }
    }
}

#Preview {
    SwipeActionViewExample()
}
