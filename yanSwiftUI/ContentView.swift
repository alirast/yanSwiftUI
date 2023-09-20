//
//  ContentView.swift
//  yanSwiftUI
//
//  Created by N S on 05.11.2023.
//

import SwiftUI

struct ContentView: View {
  
  var body: some View {
    NavigationView {
      Text("swiftui")
        .navigationTitle("Welcome")
        .navigationBarTitleDisplayMode(.inline)
      
        .navigationBarItems(trailing:
                              HStack {
          Button {
            print("about button tapped")
          } label: {
            Text("About")
          }
          
          
          Button {
            print("help button tapped")
          } label: {
            Text("Help")
          }
          
        })
    }
  }
}

#Preview {
  ContentView()
}
