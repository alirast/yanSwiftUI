//
//  ContentView.swift
//  yanSwiftUI
//
//  Created by N S on 05.11.2023.
//

import SwiftUI

struct ContentView: View {

  private var colors = ["black", "white", "red", "green", "blue"]
  @State private var selectedColor = 0
  
  var body: some View {
    VStack {
      
      Picker(selection: $selectedColor) {
        
        ForEach(0..<colors.count) { colorIndex in
          Text(self.colors[colorIndex])
        }
        
      } label: {
        Text("choose a color")
      }
      .pickerStyle(.segmented)
      .padding()
      
      Text("You selected \(colors[selectedColor])")
    }
  }
}

#Preview {
  ContentView()
}
