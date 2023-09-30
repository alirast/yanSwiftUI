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
    VStack {
      Image("people")
        .resizable()
        .aspectRatio(contentMode: .fit)
      //how much times we need to tap to execute the code
        .onTapGesture(count: 2) {
          print("Double tapped")
        }
      Spacer()
      Text("hello people")
    }
    .contentShape(Rectangle())
    .onTapGesture {
      print("hello apple")
    }
  }
}

#Preview {
  ContentView()
}
