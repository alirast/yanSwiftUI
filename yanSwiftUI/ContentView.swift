//
//  ContentView.swift
//  yanSwiftUI
//
//  Created by N S on 05.11.2023.
//

import SwiftUI

struct CustomModifier: ViewModifier {
  func body(content: Content) -> some View {
    content
      .font(.largeTitle)
      .foregroundColor(.white)
      .padding()
      .background(Color.black)
  }
}

struct ContentView: View {

  var body: some View {
    Text("hey")
      .modifier(CustomModifier())
  }
}

#Preview {
  ContentView()
}
