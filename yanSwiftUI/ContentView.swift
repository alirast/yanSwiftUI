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
    let gradient = AngularGradient(gradient: colors, center: .center)
    return Circle()
      .strokeBorder(gradient, lineWidth: 30)
  }
}

#Preview {
  ContentView()
}
