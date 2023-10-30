//
//  ContentView.swift
//  yanSwiftUI
//
//  Created by N S on 05.11.2023.
//

import SwiftUI

struct ContentView: View {
  
  @State private var showHello = true
  
  var body: some View {
    VStack {
      Toggle(isOn: $showHello) {
        Text("show hello")
      }
      .padding()
      
      if showHello {
        Text("hello")
      }
      
    }
  }
}

#Preview {
  ContentView()
}
