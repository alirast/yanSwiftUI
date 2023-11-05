//
//  ContentView.swift
//  yanSwiftUI
//
//  Created by N S on 05.11.2023.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    VStack(alignment: .center, spacing: 100) {
      Text("Hello world")
        .padding(.vertical, 50)
      Spacer()
        .frame(height: 3)
      Text("Hello")
    }
  }
}

#Preview {
  ContentView()
}
