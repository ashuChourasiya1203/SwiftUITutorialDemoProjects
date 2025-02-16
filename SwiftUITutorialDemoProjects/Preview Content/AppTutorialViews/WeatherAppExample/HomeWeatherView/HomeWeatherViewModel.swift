//
//  HomeWeatherViewModel.swift
//  SwiftUI_Weather
//
//  Created by Ashutosh Chourasiya on 27/01/25.
//

import SwiftUI

final class HomeWeatherViewModel: ObservableObject {
    @Published var isNight = false
    @Published var isShowDetailedView = false
    @Published var selectedReport: WeatherReport?
    
    var weatherButtonTitle: String {
        return self.isNight ? "Show Light Mode" : "Show Dark Mode"
    }
    var todayWeatherImage: String {
        return self.isNight ? "moon.stars.fill" : "sun.max.fill"
    }
    var weatherTemprature: Int {
        return self.isNight ? 18 : 19
    }
}

struct WeatherReport: Identifiable {
    let id = UUID()
    let dayTitle: String
    let dayImageName: String
    let dayTemp: Int
    let dayDescription: String
    
    init(
        dayTitle: String,
        dayImageName: String,
        dayTemp: Int,
        dayDescription: String
    ) {
        self.dayTitle = dayTitle
        self.dayImageName = dayImageName
        self.dayTemp = dayTemp
        self.dayDescription = dayDescription
    }
}

struct WeatherAppExampleMockData {
    static let weatherReports: [WeatherReport] = [
        WeatherReport(
            dayTitle: "MON",
            dayImageName: "cloud.sun.fill",
            dayTemp: 29,
            dayDescription: """
                      On Monday, the weather in your city will be a delightful mix of clouds and sunshine, creating a serene atmosphere for the beginning of the week. The temperature is expected to reach a pleasant 29°C, providing a perfect balance for outdoor activities. You might notice scattered clouds in the sky, adding a touch of variety to the scenery.
                      
                      Take advantage of this mild weather to engage in your favorite outdoor hobbies, whether it's a brisk morning walk, a picnic in the park, or a friendly game of sports. The gentle breeze and comfortable temperature make Monday an ideal day to enjoy the beauty of nature.
                      
                      As the day progresses, you can anticipate a gradual transition from day to night, with the evening maintaining a tranquil ambiance. Consider spending some quality time outdoors with loved ones, soaking in the natural beauty that Monday has to offer.
                      
                      Make the most of this day, appreciating the simple joys that come with favorable weather conditions. Whether you're working, studying, or relaxing, Monday's weather is sure to contribute positively to your daily routine.
                      """
        ),
        
        WeatherReport(
            dayTitle: "TUE",
            dayImageName: "sun.max.fill",
            dayTemp: 34,
            dayDescription: """
                      Tuesday will be characterized by abundant sunshine, creating a warm and inviting atmosphere throughout the day. The temperature is expected to rise to a comfortable 34°C, making it a perfect opportunity to bask in the sun and enjoy the summery vibes.
                      
                      With clear skies and radiant sunlight, Tuesday provides an excellent backdrop for outdoor activities. Whether you prefer lounging by the pool, having a picnic with friends, or engaging in water sports, the weather conditions are conducive to a variety of leisurely pursuits.
                      
                      As the day unfolds, you'll experience the full intensity of the sun's rays, creating a sense of vitality and energy. Make sure to stay hydrated and apply sunscreen if you plan to spend extended periods outdoors.
                      
                      As the sun sets on Tuesday evening, you can reflect on the day's warmth and brightness. Consider taking a leisurely stroll under the twilight sky or enjoying a refreshing beverage on the patio.
                      
                      Tuesday's weather promises a day filled with sunshine and positivity, providing the perfect backdrop for a variety of outdoor and recreational activities.
                      """
        ),
        
        WeatherReport(
            dayTitle: "WED",
            dayImageName: "wind.snow",
            dayTemp: 22,
            dayDescription: """
                      Wednesday brings a change in weather, with the possibility of some snowfall and a cooler temperature of 22°C. Embrace the wintry ambiance as delicate snowflakes dance through the air, transforming the landscape into a serene winter wonderland.
                      
                      This change in weather opens up opportunities for cozy indoor activities. Consider spending the day by the fireplace with a good book, enjoying a cup of hot cocoa, or engaging in creative projects that thrive in the comfort of a warm, snug environment.
                      
                      As you venture outside, you'll notice a crispness in the air, accompanied by the enchanting beauty of falling snow. Bundle up in your favorite winter attire and take a leisurely walk through the snow-covered scenery, appreciating the tranquility that Wednesday brings.
                      
                      In the evening, the softly falling snow creates a magical and peaceful atmosphere. Whether you choose to stay indoors and admire the snow from the window or venture outside for a moonlit stroll, Wednesday's weather invites you to savor the charm of winter.
                      """
        ),
        
        WeatherReport(
            dayTitle: "THU",
            dayImageName: "sunset.fill",
            dayTemp: 26,
            dayDescription: """
                      Thursday promises a beautiful sunset, painting the sky with a vibrant array of colors as the day comes to a close. With a temperature of 26°C, the evening will be comfortably warm, creating a picturesque setting for relaxation and reflection.
                      
                      As the sun begins its descent, you can find a serene spot to witness the breathtaking display of hues in the sky. Whether you're at the beach, in a park, or on your balcony, Thursday's sunset is sure to captivate your senses and provide a moment of tranquility.
                      
                      The warm evening temperature encourages outdoor activities during the sunset hours. Consider organizing a picnic with loved ones, taking a leisurely stroll, or simply unwinding with a good book as you soak in the beauty of the fading daylight.
                      
                      As Thursday transitions into night, the memory of the stunning sunset lingers, leaving you with a sense of peace and appreciation for the natural wonders that surround us. Take a moment to reflect on the day's beauty and find joy in the simplicity of a well-spent evening.
                      """
        ),
        
        WeatherReport(
            dayTitle: "FRI",
            dayImageName: "snow",
            dayTemp: 17,
            dayDescription: """
                      Friday marks the end of the workweek with the possibility of some gentle snowfall and a cooler temperature of 17°C. Embrace the winter weather as delicate snowflakes create a serene and enchanting ambiance, adding a touch of magic to the day.
                      
                      The cooler temperature invites you to enjoy the coziness of indoor activities. Consider spending the day baking delicious treats, watching your favorite movies, or engaging in creative projects that thrive in the comfort of a warm and inviting space.
                      
                      If you decide to venture outside, the softly falling snow provides an opportunity for a leisurely winter walk. Bundle up in your favorite winter gear and explore the snow-covered landscape, appreciating the tranquility that Friday brings.
                      
                      In the evening, the gently falling snow continues to create a peaceful and magical atmosphere. Whether you choose to stay indoors and enjoy the warmth of a cozy fireplace or venture outside to experience the winter night, Friday's weather invites you to savor the beauty of the season.
                      """
        )
    ]
}
