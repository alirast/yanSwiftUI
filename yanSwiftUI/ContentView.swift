//
//  ContentView.swift
//  yanSwiftUI
//
//  Created by N S on 05.11.2023.
//

import SwiftUI

struct ContentView: View {
  
  @State private var showingAlert = false

  var body: some View {
    Button {
      self.showingAlert = true
    } label: {
      Text("show alert")
    }
    .alert(isPresented: $showingAlert) {
      Alert(title: Text("Hello swiftUI"),
            message: Text("Some detail msg"),
            dismissButton: .default(Text("ok")))
    }

  }
}

#Preview {
  ContentView()
}
