//
//  ContentView.swift
//  yanSwiftUI
//
//  Created by N S on 05.11.2023.
//

import SwiftUI

class User: ObservableObject {
  @Published var firstName = "Ivan"
  @Published var lastName = "petrov"
}

struct ContentView: View {
  
  @ObservedObject var user = User()

  var body: some View {
    VStack {
      Text("ur name is \(user.firstName) \(user.lastName)")
      TextField("First name", text: $user.firstName)
      TextField("First name", text: $user.lastName)
    }
    .padding()
  }
}


#Preview {
  ContentView()
}
