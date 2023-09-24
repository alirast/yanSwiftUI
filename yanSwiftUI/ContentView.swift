//
//  ContentView.swift
//  yanSwiftUI
//
//  Created by N S on 05.11.2023.
//

import SwiftUI

//one line in our list
struct MusicRow: View {
  var name: String
  
  var body: some View {
    Text("Music: \(name)")
  }
}

struct ContentView: View {
  
  @State private var age = 18
  
  var body: some View {
    List {
      MusicRow(name: "Rock")
      MusicRow(name: "Rap")
      MusicRow(name: "Classical")
    }
  }
}

#Preview {
  ContentView()
}
