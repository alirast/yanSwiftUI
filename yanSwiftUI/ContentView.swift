//
//  ContentView.swift
//  yanSwiftUI
//
//  Created by N S on 05.11.2023.
//

import SwiftUI

struct ContentView: View {

  @State private var celsius: Double = 0
  
  var body: some View {
    VStack {
      Slider(value: $celsius, in: -100...100, step: 0.1)
        .padding()
      Text("\(celsius) Celsius is \(celsius * 9 / 5 + 32) Fahrenheit")
    }
  }
}

#Preview {
  ContentView()
}
