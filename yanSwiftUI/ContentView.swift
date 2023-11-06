//
//  ContentView.swift
//  yanSwiftUI
//
//  Created by N S on 05.11.2023.
//

import SwiftUI

struct ContentView: View {
  
  @State private var checkAmount = ""
  @State private var numberOfPeople = 2
  @State private var tipPercentage = 0
  
  let tipPercentages = [0, 5, 10, 15, 20]
  
  private var totalPerPerson: Double {
    let peopleCount = Double(numberOfPeople + 2)
    let tipSelection = Double(tipPercentages[tipPercentage])
    let orderAmount = Double(checkAmount) ?? 0
    let tipValue = orderAmount / 100 * tipSelection
    let grandTotal = orderAmount + tipValue
    let amountPerPerson = grandTotal / peopleCount
    
    return amountPerPerson
  }

  var body: some View {
    NavigationView {
      Form {
        Section {
          TextField("Amount", text: $checkAmount)
          Picker("Number of people", selection: $numberOfPeople) {
            ForEach(2..<100) {
              Text("\($0) people")
            }
          }
        }
        
        Section(header: Text("What you want to give?")) {
          Picker("% tip", selection: $tipPercentage) {
            ForEach(0..<tipPercentages.count) {
              Text("\(self.tipPercentages[$0])%")
            }
          }
          .pickerStyle(.segmented)
        }
        
        Section {
          Text("\(totalPerPerson, specifier: "%.2f")")
        }
      }
      .navigationBarTitle("Tips calculator")
      .navigationBarTitleDisplayMode(.inline)
    }
  }
}

#Preview {
  ContentView()
}
