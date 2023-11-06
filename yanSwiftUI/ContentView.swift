//
//  ContentView.swift
//  yanSwiftUI
//
//  Created by N S on 05.11.2023.
//

import SwiftUI

struct ContentView: View {
  
  @ObservedObject var settings = UserSettings()

  var body: some View {
    VStack {
      Text("Ur score is \(settings.score)")
      
      Button {
        self.settings.score += 1
      } label: {
        Text("increase score")
      }

    }
  }
}


#Preview {
  ContentView()
}
