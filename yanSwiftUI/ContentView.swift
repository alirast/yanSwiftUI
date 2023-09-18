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
        .onDelete(perform: delete)
      }
    }
  }
  
  private func delete(at offsets: IndexSet) {
    users.remove(atOffsets: offsets)
  }
}

#Preview {
  ContentView()
}
