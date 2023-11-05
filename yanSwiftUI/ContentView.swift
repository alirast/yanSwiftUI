//
//  ContentView.swift
//  yanSwiftUI
//
//  Created by N S on 05.11.2023.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    Image("people")
      .resizable()
      .aspectRatio(contentMode: .fit)
  }
}

#Preview {
  ContentView()
}
