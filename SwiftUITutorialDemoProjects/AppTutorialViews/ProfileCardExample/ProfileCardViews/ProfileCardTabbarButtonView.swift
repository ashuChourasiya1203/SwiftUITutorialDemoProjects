//
//  ProfileCardTabbarButtonView.swift
//  ProfileCardExample
//
//  Created by Ashutosh Chourasiya on 06/02/25.
//

import SwiftUI

struct ProfileCardTabbarButtonView: View {
    let isActive: Bool
    let imageName: String
    let title: String
    
    var body: some View {
        GeometryReader { geo in
            if self.isActive {
                Rectangle()
                    .foregroundStyle(.blue)
                    .frame(width: geo.size.width/2, height: 4)
                    .padding(.leading, geo.size.width/4)
            }
            VStack(alignment: .center, spacing: 4) {
                Image(systemName: self.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24)
                
                Text(self.title)
            }
            .frame(width: geo.size.width, height: geo.size.height)
        }
    }
}
