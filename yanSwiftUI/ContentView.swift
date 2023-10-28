//
//  ContentView.swift
//  yanSwiftUI
//
//  Created by N S on 05.11.2023.
//

import SwiftUI

struct ContentView: View {
  
  @State private var showDetail = false
  
  var body: some View {
    VStack {
      
      Button {
        self.showDetail.toggle()
      } label: {
        Text("show details")
      }
      
      if showDetail {
        Text("Some details here...")
          .font(.largeTitle)
      }
    }
  }
}

#Preview {
  ContentView()
}
