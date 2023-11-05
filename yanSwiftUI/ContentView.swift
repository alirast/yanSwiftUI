//
//  ContentView.swift
//  yanSwiftUI
//
//  Created by N S on 05.11.2023.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    Image(systemName: "cloud.sun.fill")
      .font(.largeTitle)
      .padding(30)
      .background(Color.green)
      .foregroundColor(.brown)
      .clipShape(RoundedRectangle(cornerRadius: 20))
  }
}

#Preview {
  ContentView()
}
