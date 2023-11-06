//
//  ContentView.swift
//  yanSwiftUI
//
//  Created by N S on 05.11.2023.
//

import SwiftUI

struct ContentView: View {
  
  @State private var colors = ["red", "green", "blue"]
  @State private var selectedColor = 0
  @State private var additionalSettings = false
  
  var body: some View {
    NavigationView {
      Form {
        Picker(selection: $selectedColor, label: Text("Select a color")) {
          ForEach(0..<colors.count) {
            Text(self.colors[$0])
          }
        }
        .pickerStyle(.segmented)
        
        Toggle(isOn: $additionalSettings) {
          Text("Additional settings")
        }
        
        Button(action: {
          //
        }) {
          Text("Save changes")
        }
      }
      .navigationBarTitle("Settings")
    }
  }
}

#Preview {
  ContentView()
}
