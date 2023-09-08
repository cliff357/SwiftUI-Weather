//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Cliff Chan on 8/9/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.blue)
            BackgroundView(topColor: .blue, bottomColor: .white)
            VStack {
               CityTextView(cityName: "Cupertion, CA")
                
                MainWeatherStatusView(imageName: "sun.horizon.fill", temperature: 70)
                
                Spacer()
                
                HStack (spacing: 30) {
                    WeatherDayView(dayOfWeek: "TUE", imageName: "moon.fill", temperature: 10)
                    
                    WeatherDayView(dayOfWeek: "WEB", imageName: "moon.fill", temperature: 10)
                    
                    WeatherDayView(dayOfWeek: "THU", imageName: "moon.fill", temperature: 10)
                    
                    WeatherDayView(dayOfWeek: "FRI", imageName: "moon.fill", temperature: 10)
                    
                    WeatherDayView(dayOfWeek: "SAT", imageName: "moon.fill", temperature: 10)
                }
                
                Spacer()
                
                Button {
                    print("tapped")
                } label: {
                    WeatherButton(title: "changed day time", textColor: .black, backgroundColor: .white)
                }
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeatherDayView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            Text("\(temperature)")
                .font(.system(size:28,weight: .medium))
                .foregroundColor(.white)
        }
    }
}

struct BackgroundView: View {
    
    var topColor: Color
    var bottomColor: Color
    var body: some View {
    
        LinearGradient(gradient: Gradient(colors: [topColor,bottomColor]),
                       startPoint: .leading,
                       endPoint: .bottom)
        //                .ignoresSafeArea(edges: .all)
        .edgesIgnoringSafeArea(.all)
    }
}

struct CityTextView: View{
    
    var cityName: String
    var body: some View {
        Text(cityName)
            .font(.system(size: 32 ,weight: .medium,design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

struct MainWeatherStatusView: View {
    
    var imageName: String
    var temperature: Int
    var body: some View {
        VStack {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 80,height: 80)
            
            Text("\(temperature)")
                .font(.system(size: 70,weight: .medium))
                .foregroundColor(.white)
            
        }
    }
}
