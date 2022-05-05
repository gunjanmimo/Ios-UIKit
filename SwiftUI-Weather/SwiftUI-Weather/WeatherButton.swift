//
//  WeatherButton.swift
//  SwiftUI-Weather
//
//  Created by Gunjan  Paul on 05/05/22.
//

import Foundation
import SwiftUI
struct WeatherButton: View {
    
var title:String
    var textColor: Color
    var backgroundColor: Color
    var body: some View {
        Text(title)
            .frame(width: 280, height: 50)
            .background(backgroundColor)
            .foregroundColor(textColor)
            .font(.system(size: 20,weight: .medium,design: .default))
            .cornerRadius(20)
    }
}
