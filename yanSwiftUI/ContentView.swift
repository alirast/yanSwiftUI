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
      Stepper("Enter ur age", onIncrement: {
        self.age += 1
        debugPrint("adding to age")
      }, onDecrement: {
        self.age -= 1
        debugPrint("Subtracting from age")
      })
      .padding()
      Text("ur age is \(age)")
    }
  }
}

#Preview {
  ContentView()
}
