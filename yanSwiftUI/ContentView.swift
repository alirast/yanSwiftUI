//
//  ContentView.swift
//  yanSwiftUI
//
//  Created by N S on 05.11.2023.
//

import SwiftUI

struct TaskRow: View {
  var body: some View {
    Text("Some task")
  }
}

struct ContentView: View {
  
  var body: some View {
    List {
      Section(header: Text("Important tasks"),
              footer: Text("End")) {
        TaskRow()
        TaskRow()
        TaskRow()
      }
      
      Section(header: Text("Other tasks")) {
        TaskRow()
        TaskRow()
        TaskRow()
      }
      .listRowBackground(Color.yellow)
    }
    .listStyle(.grouped)
  }
}

#Preview {
  ContentView()
}
