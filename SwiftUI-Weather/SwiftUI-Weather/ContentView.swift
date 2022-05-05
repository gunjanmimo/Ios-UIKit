//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Gunjan  Paul on 04/05/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            BackgroundView(isNight: $isNight)
            
            
            VStack(spacing: 40){
                CityTextView(cityName:"Jaipur, Inddia",temparature: "76°",imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill")
                HStack(spacing: 20){
                    WeatherDayView(dayOfWeek: "THU", imageName:  "cloud.sun.fill", temparature: "74°")
                    WeatherDayView(dayOfWeek: "WED", imageName: "sun.max.fill", temparature: "70°")
                    WeatherDayView(dayOfWeek: "THU", imageName:  "wind", temparature: "66°")
                    WeatherDayView(dayOfWeek: "FRI", imageName: "sunset.fill",temparature:"60°")
                    WeatherDayView(dayOfWeek: "SAT", imageName: "moon.stars.fill", temparature: "55°")
                }
                Button{
                    isNight.toggle()
                }label: {
                    WeatherButton(title: "Change Day Time", textColor: .blue, backgroundColor: .white)
                }
                .padding()
                
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

struct BackgroundView: View {
    @Binding var isNight: Bool
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [isNight ? .black : .blue, isNight ? Color("lightBlue") : .gray]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing )
        .edgesIgnoringSafeArea(.all)
    }
}

struct CityTextView: View{
   
    
    
    var cityName:String
    var temparature: String
    var imageName: String
    var body:some View{
        VStack(spacing: 10){
            Text(cityName)
                .font(.system(size: 32, weight: .medium,design: .default))
                .foregroundColor(.white)
                .padding()
            Image(systemName: imageName )
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:180, height: 180)
            
            Text(temparature)
                .font(.system(size: 60,weight: .medium))
                .foregroundColor(.white)
        }
    }
}

struct WeatherDayView: View{
    var dayOfWeek: String
    var imageName: String
    var temparature: String
    
    var body: some View{
        VStack{ Text(dayOfWeek)
                .font(.system(size: 20,weight: .medium))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                    .frame(width: 48, height: 48)
            
            Text(temparature)
                .font(.system(size: 30,weight: .medium))
                .foregroundColor(.white)}
       
    }
}

