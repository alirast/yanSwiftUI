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
    Text("tap me")
      .onTapGesture {
        print("tapped")
      }
  }
}

#Preview {
  ContentView()
}
