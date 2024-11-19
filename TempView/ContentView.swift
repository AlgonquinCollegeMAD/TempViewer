//
//  ContentView.swift
//  TempView
//
//  Created by Vladimir Cezar on 2024.11.19.
//

import SwiftUI

struct ContentView: View {
  @State private var temperature: Double = 0.0 // Temperature in Celsius
  
  var body: some View {
    VStack(spacing: 20) {
      Text("\(Int(temperature))°C")
        .font(.largeTitle)
        .bold()
        .padding()
      
      Rectangle()
        .fill(color(for: temperature))
        .frame(width: 200, height: 200)
        .cornerRadius(16)
        .shadow(radius: 10)
      
      Slider(value: $temperature, in: -30...40, step: 1)
        .padding()
    }
    .padding()
  }
  
  private func color(for temperature: Double) -> Color {
    let normalized = (temperature + 30) / 70 // Normalize temperature to 0.0 - 1.0 for the range -30 to 40
    return Color(hue: (1.0 - normalized) * 2/3, saturation: 0.8, brightness: 0.9)
  }
}

#Preview {
  ContentView()
}
