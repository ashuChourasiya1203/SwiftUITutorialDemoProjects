//
//  CommonListCellRowView.swift
//  SwiftUITutorialDemoProjects
//
//  Created by Ashutosh Chourasiya on 12/02/25.
//

import SwiftUI

struct CommonListCellRowView<T: ListRowViewModel>: View {
    let topicModel: T
    
    var body: some View {
        NavigationLink(destination: self.topicModel.destinationView) {
            HStack(alignment: .top) {
                VStack(alignment: .leading, spacing: 10) {
                    Text(self.topicModel.title)
                        .font(.title2).bold()
                        .foregroundColor(.white)
                        .shadow(color: .black.opacity(0.5), radius: 4, x: 2, y: 2)
                    
                    Text(self.topicModel.description)
                        .font(.title3).bold()
                        .foregroundColor(.white.opacity(0.8))
                }
                .padding(.vertical)
                .padding(.horizontal, 10)
                
                Spacer()
                
                if let image = self.topicModel.viewImage {
                    Image(uiImage: image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 200)
                        .cornerRadius(8)
                        .padding(.top, 5)
                        .padding(.bottom, 5)
                }
            }
            .background(
                LinearGradient(
                    gradient: Gradient(colors: [.purple, .blue]),
                    startPoint: .top,
                    endPoint: .bottom
                )
            )
            .cornerRadius(10)
        }
        .buttonStyle(PlainButtonStyle())
    }
}
