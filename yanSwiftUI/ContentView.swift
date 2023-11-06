//
//  ContentView.swift
//  yanSwiftUI
//
//  Created by N S on 05.11.2023.
//

import SwiftUI

struct ContentView: View {
  
  @State private var showingAlert1 = false
  @State private var showingAlert2 = false

  var body: some View {
    HStack {
      Button {
        self.showingAlert1 = true
      } label: {
        Text("show 1")
      }
      .alert(isPresented: $showingAlert1) {
        Alert(title: Text("One"), dismissButton: .cancel())
      }
      
      Button {
        self.showingAlert2 = true
      } label: {
        Text("show 2")
      }
      .alert(isPresented: $showingAlert2) {
        Alert(title: Text("Two"), dismissButton: .cancel())
      }
    }
  }
}

#Preview {
  ContentView()
}
