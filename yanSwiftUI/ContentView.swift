//
//  ContentView.swift
//  yanSwiftUI
//
//  Created by N S on 05.11.2023.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    Text("apple")
      .background(
        Image("people")
          .resizable()
          .frame(width: 300, height: 250)
      )
  }
}

#Preview {
  ContentView()
}
