//
//  ContentView.swift
//  yanSwiftUI
//
//  Created by N S on 05.11.2023.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    Text("let's style the text views with fonts, colors and line spacing")
      .tracking(5)
      .lineLimit(nil)
      .truncationMode(.middle)
      .font(.largeTitle)
      .multilineTextAlignment(.center)
      .background(Color.gray)
      .foregroundColor(.white)
      .lineSpacing(50)
  }
}

#Preview {
  ContentView()
}
