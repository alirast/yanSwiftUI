//
//  ContentView.swift
//  yanSwiftUI
//
//  Created by N S on 05.11.2023.
//

import SwiftUI

struct ContentView: View {
  
  @State private var useGreenText = false

  var body: some View {
    Button {
      self.useGreenText.toggle()
    } label: {
      Text("hello")
    }
    .foregroundColor(useGreenText ? .green : .black)

  }
}

#Preview {
  ContentView()
}
