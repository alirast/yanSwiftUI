//
//  ContentView.swift
//  yanSwiftUI
//
//  Created by N S on 05.11.2023.
//

import SwiftUI

struct ContentView: View {
  
  @State private var name = ""
  
  var body: some View {
    VStack {
      TextField("Enter your name", text: $name)
        .textFieldStyle(.roundedBorder)
        .padding()
      Text("Hello, \(name)")
    }
  }
}

#Preview {
  ContentView()
}
