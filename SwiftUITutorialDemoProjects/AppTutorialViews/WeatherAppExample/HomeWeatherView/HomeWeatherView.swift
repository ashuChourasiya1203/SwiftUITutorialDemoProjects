//
//  HomeWeatherView.swift
//  SwiftUI_Weather
//
//  Created by Ashutosh Chourasiya on 06/03/24.
//

import SwiftUI

struct HomeWeatherView: View {
    @StateObject private var viewModel = HomeWeatherViewModel()
    
    var body: some View {
        ZStack {
            GradientBGView(isNight: self.viewModel.isNight)
            
            VStack {
                WeatherLocationView(cityName: "Ahmedabad, GJ")
                TodaysWeatherView(
                    imgName: self.viewModel.todayWeatherImage,
                    temprature: self.viewModel.weatherTemprature
                )
                
                Spacer()
                Text("Tap on the day of week to see detailed report.")
                    .font(.system(size: 14, weight: .semibold))
                    .foregroundColor(.white)
                
                HStack(spacing: 20) {
                    ForEach(WeatherAppExampleMockData.weatherReports) { report in
                        WeatherDayView(
                            dayOfWeek: report.dayTitle,
                            imageName: report.dayImageName,
                            temprature: report.dayTemp
                        )
                        .onTapGesture {
                            self.viewModel.selectedReport = report
                            self.viewModel.isShowDetailedView = true
                            debugPrint("Selected Report: \(String(describing: self.viewModel.selectedReport))")
                        }
                        .sheet(isPresented: self.$viewModel.isShowDetailedView) {
                            if let selectedReport = self.viewModel.selectedReport {
                                DetailedWeatherView(
                                    isNight: self.viewModel.isNight,
                                    weatherReport: selectedReport
                                )
                            }
                        }
                    }
                }
                .padding(.all, 15)
                .frame(height: UIScreen.main.bounds.height * 0.20)
                .background(Color(self.viewModel.isNight ? .white : .black).opacity(0.08))
                .clipShape(.rect(cornerRadius: 12))
                
                Spacer()
                Button {
                    print("Change Day Time Clicked.....")
                    self.viewModel.isNight.toggle()
                } label: {
                    WeatherButton(
                        title: self.viewModel.weatherButtonTitle,
                        isNight: self.viewModel.isNight
                    )
                }
                .padding().buttonStyle(PlainButtonStyle())
                
            }
            .frame(width: UIScreen.main.bounds.width)
        }
    }
}

#Preview {
    HomeWeatherView()
}

struct WeatherDayView: View {
    var dayOfWeek: String
    var imageName: String
    var temprature: Int
    
    var body: some View {
        VStack(spacing: 10) {
            Text(self.dayOfWeek)
                .font(.system(size: 16,weight: .semibold))
                .foregroundColor(.white)
            
            Image(systemName: self.imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: (UIScreen.main.bounds.width/5 - 28),height: 38)
            
            Text("\(self.temprature)°")
                .font(.system(size: 27, weight: .bold, design: .default))
                .foregroundColor(.white)
        }
    }
}

struct GradientBGView: View {
    var isNight: Bool
    
    var body: some View {
        ///Custom gradient color : -
        LinearGradient(
            colors: [
                self.isNight ? .black : .blue,
                self.isNight ? .gray : .lightBlue
            ],
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        ).ignoresSafeArea()
        
        ///apple's default gradient method.
        //ContainerRelativeShape()
        //.fill(self.isNight ? Color.black.gradient : Color.blue.gradient)
        //.ignoresSafeArea()
    }
}

struct WeatherLocationView: View {
    var cityName : String
    var body: some View {
        Text(self.cityName)
            .font(.system(size: 36,weight: .semibold,design: .default))
            .foregroundStyle(.white)
            .padding()
    }
}

struct TodaysWeatherView: View {
    var imgName: String
    var temprature: Int
    let height = UIScreen.main.bounds.height * 0.25
    
    var body: some View {
        VStack(spacing: 5) {
            Image(systemName: self.imgName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: self.height,height: self.height)
            
            Text("\(self.temprature)°C")
                .font(.system(size: 75,weight: .semibold))
                .foregroundColor(.white)
            
        }.padding(.bottom, 35)
    }
}

