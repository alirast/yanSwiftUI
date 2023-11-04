//
//  ContentView.swift
//  yanSwiftUI
//
//  Created by N S on 05.11.2023.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    let colors = Gradient(colors: [.red, .yellow, .blue, .green, .purple])
    let gradient = RadialGradient(gradient: colors, center: .center, startRadius: 50, endRadius: 200)
    return Circle()
      .fill(gradient)
      .frame(width: 400, height: 400)
  }
}

#Preview {
  ContentView()
}
