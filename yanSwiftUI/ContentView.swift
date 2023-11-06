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
      Text("Show alert")
    }
    .alert(isPresented: $showingAlert) {
      Alert(title: Text("Are u sure to delete it?"),
            message: Text("No way back"),
            primaryButton: .destructive(Text("Delete")) {
        print("Deleting")
      },
            secondaryButton: .cancel())
     
    
    }

  }
}

#Preview {
  ContentView()
}
