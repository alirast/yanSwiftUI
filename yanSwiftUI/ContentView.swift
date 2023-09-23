//
//  ContentView.swift
//  yanSwiftUI
//
//  Created by N S on 05.11.2023.
//

import SwiftUI

struct Restaurant: Identifiable {
  var id = UUID()
  var name: String
}

struct RestaurantRow: View {
  var restaurant: Restaurant
  
  var body: some View {
    Text("Come and eat at \(restaurant.name)")
  }
}

struct ContentView: View {
  
  var body: some View {
    let first = Restaurant(name: "First Restaurant")
    let second = Restaurant(name: "Second Restaurant")
    let third = Restaurant(name: "Third Restaurant")
    
    let restaurants = [first, second, third]
    
    return List(restaurants) { restaurant in
      RestaurantRow(restaurant: restaurant)
    }
  }
}

#Preview {
  ContentView()
}
