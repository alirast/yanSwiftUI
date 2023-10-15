//
//  ContentView.swift
//  yanSwiftUI
//
//  Created by N S on 05.11.2023.
//

import SwiftUI

struct ContentView: View {
  
  @State private var password = ""
  
  var body: some View {
    VStack {
      SecureField("Enter ur password", text: $password)
        .padding()
      Text("Your entered \(password)")
    }
  }
}

#Preview {
  ContentView()
}
