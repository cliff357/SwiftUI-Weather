//
//  WeatherButton.swift
//  SwiftUI-Weather
//
//  Created by Cliff Chan on 8/9/2023.
//

import SwiftUI

struct WeatherButton: View {
    
    var title: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
        Text(title)
            .frame(width: 280,height: 50)
            .background(backgroundColor)
            .foregroundColor(textColor)
            .cornerRadius(10)
            .shadow(radius: 10)
    }
}
