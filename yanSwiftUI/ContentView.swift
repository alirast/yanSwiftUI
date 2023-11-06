//
//  ContentView.swift
//  yanSwiftUI
//
//  Created by N S on 05.11.2023.
//

import SwiftUI

struct CustomText: View {
  var name: String
  var body: some View {
    Text(name)
      .font(.largeTitle)
      .padding()
      .foregroundColor(.red)
      .background(Color.green)
  }
}

struct ContentView: View {

  var body: some View {
    VStack(spacing: 30) {
      CustomText(name: "first")
      CustomText(name: "second")
    }
  }
}

#Preview {
  ContentView()
}
