//
//  WeatherButton.swift
//  SwiftUI_Weather
//
//  Created by Ashutosh Chourasiya on 06/03/24.
//

import SwiftUI

struct WeatherButton: View {
    var title: String
    var isNight: Bool
    let size = UIScreen.main.bounds
    
    var body: some View {
        Text(self.title)
            .frame(width: self.size.width - 40, height: self.size.height * 0.07)
            .background(self.isNight ? Color.white : Color.mediumBlue)
            .foregroundColor(self.isNight ? .black : .white)
            .font(.system(size: 20, weight: .bold, design: .default))
            .cornerRadius(12)
    }
}

#Preview {
    WeatherButton(title: "Button Title", isNight: false)
}
