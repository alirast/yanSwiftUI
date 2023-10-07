//
//  ContentView.swift
//  yanSwiftUI
//
//  Created by N S on 05.11.2023.
//

import SwiftUI

struct ContentView: View {

  @State private var age = 18
  
  var body: some View {
    VStack {
      Stepper("Enter ur age", value: $age, in: 0...130)
        .padding()
      Text("Ur age is \(age)")
    }
  }
}

#Preview {
  ContentView()
}
