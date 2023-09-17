//
//  ContentView.swift
//  yanSwiftUI
//
//  Created by N S on 05.11.2023.
//

import SwiftUI

struct ContentView: View {
  
  @State private var users = ["Ian", "Fiona", "Carl"]
  
  var body: some View {
    NavigationView {
      List {
        ForEach(users, id: \.self) { user in
          Text("\(user)")
        }
        .onMove(perform: move)
      }
      .navigationBarItems(trailing: EditButton())
    }
  }
  
  private func move(from source: IndexSet, to destination: Int) {
    users.move(fromOffsets: source, toOffset: destination)
  }
}

#Preview {
  ContentView()
}
