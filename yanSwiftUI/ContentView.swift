//
//  ContentView.swift
//  yanSwiftUI
//
//  Created by N S on 05.11.2023.
//

import SwiftUI

struct ContentView: View {
  
  @State private var showingSheet = false

  var body: some View {
    Button {
      self.showingSheet = true
    } label: {
      Text("Show action sheet")
    }
    .actionSheet(isPresented: $showingSheet) {
      ActionSheet(title: Text("what u wanna do?"),
                  message: Text("there's only one choice"),
                  buttons: [.default(Text("dismiss sheet")), .cancel(), .destructive(Text("delete"))])
    }
  }
}

#Preview {
  ContentView()
}
