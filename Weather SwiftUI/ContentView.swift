//
//  ContentView.swift
//  Weather SwiftUI
//
//  Created by Ruslan Ismayilov on 6/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
                LinearGradient(gradient: Gradient(colors: [.blue, Color("lightBlue")]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Text("Cupertino, CA")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                VStack(spacing : 10){
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    
                    Text("76°")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white)
                    
                }
                
                .padding(.bottom , 40)
                
                HStack(spacing: 20){
                    WeatherDayView(dayOfWeek: "TUE", imageName: "cloud.sun.fill", temperature: 73)
                    WeatherDayView(dayOfWeek: "WED", imageName: "sun.max.fill", temperature: 79)
                    WeatherDayView(dayOfWeek: "THU", imageName: "wind", temperature: 69)
                    WeatherDayView(dayOfWeek: "FRI", imageName: "cloud.fill", temperature: 67)
                    WeatherDayView(dayOfWeek: "SAT", imageName: "cloud.drizzle.fill", temperature: 63)
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
    
    var dayOfWeek : String
    var imageName : String
    var temperature : Int
    
    var body: some View {
        VStack{
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium))
                .foregroundColor(.white)
            
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            Text("\(temperature)°")
                .font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
        }
    }
}
