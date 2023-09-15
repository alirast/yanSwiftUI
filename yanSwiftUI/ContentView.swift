//
//  ContentView.swift
//  yanSwiftUI
//
//  Created by N S on 05.11.2023.
//

import SwiftUI

struct ContentView: View {
  
  @State private var selectedView = 1
  
  var body: some View {
    TabView(selection: $selectedView) {
      Text("First view")
        .tabItem {
          Image(systemName: "1.circle")
          Text("First")
        }
        .tag(1)
      
      Text("Second view")
        .tabItem {
          Image(systemName: "2.circle")
          Text("Second")
        }
        .tag(2)
    }
  }
}

#Preview {
  ContentView()
}
