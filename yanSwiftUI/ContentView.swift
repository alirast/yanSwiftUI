//
//  ContentView.swift
//  yanSwiftUI
//
//  Created by N S on 05.11.2023.
//

import SwiftUI

struct ContentView: View {
  
  @State private var age = 18
  
  var body: some View {
    Image("people")
      .resizable()
      .aspectRatio(contentMode: .fit)
      .gesture(
        LongPressGesture(minimumDuration: 2)
          .onEnded { _ in
            print("pressed")
          }
      )
  }
}

#Preview {
  ContentView()
}
