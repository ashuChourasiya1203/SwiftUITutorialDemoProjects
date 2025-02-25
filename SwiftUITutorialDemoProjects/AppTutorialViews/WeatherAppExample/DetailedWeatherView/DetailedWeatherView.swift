//
//  DetailedWeatherView.swift
//  SwiftUI_Weather
//
//  Created by Ashutosh on 07/03/24.
//

import SwiftUI

struct DetailedWeatherView: View {
    var isNight = false
    var weatherReport: WeatherReport
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [
                    self.isNight ? .black : .blue,
                    self.isNight ? .gray : .lightBlue
                ],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            ).ignoresSafeArea()
            
            ScrollView {
                VStack(spacing: 35){
                    VStack(spacing: 5) {
                        Text(self.weatherReport.dayTitle)
                            .font(.system(size: 50))
                            .fontWeight(.heavy)
                            .foregroundColor(.white)
                            .padding(.bottom,30)
                        
                        Image(systemName: self.weatherReport.dayImageName)
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 220)
                        
                        Text("\(self.weatherReport.dayTemp)°C")
                            .font(.system(size: 45,weight: .bold,design: .default))
                            .foregroundColor(.white)
                        
                    }
                    Text(self.weatherReport.dayDescription)
                        .padding(.leading, 18)
                        .padding(.trailing, 18)
                        .font(.body)
                        .fontWeight(.medium)
                        .foregroundColor(self.isNight ? .white : .black)
                }
            }
            .padding(.top, 15)
            .padding(.bottom, 15)
            .scrollIndicators(.hidden)
            .scrollBounceBehavior(.basedOnSize)
            
            Spacer(minLength: 20)
        }
        .overlay {
            VStack {
                HStack {
                    Spacer()
                    Button {
                        print("X Button Tapped...")
                        self.presentationMode.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: "xmark")
                            .foregroundColor(Color(self.isNight ? .white : .label))
                            .imageScale(.large)
                            .frame(width: 40,height: 40)
                    }
                }
                .padding(.trailing, 10)
                Spacer()
            }
            .padding(.top, 25)
        }
    }
}

#Preview {
    DetailedWeatherView(
        isNight: true,
        weatherReport: WeatherAppExampleMockData.weatherReports[0]
    )
}
