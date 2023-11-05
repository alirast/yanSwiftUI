//
//  ContentView.swift
//  yanSwiftUI
//
//  Created by N S on 05.11.2023.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    Text("hello")
      .font(.largeTitle)
      .padding()
      .foregroundColor(.white)
      .background(LinearGradient(gradient: Gradient(colors: [.black, .white]),
                                 startPoint: .leading,
                                 endPoint: .trailing))
  }
}

#Preview {
  ContentView()
}
