//
//  ContentView.swift
//  yanSwiftUI
//
//  Created by N S on 05.11.2023.
//

import SwiftUI

struct ContentView: View {
  
  @State private var countries = ["UK", "USA", "Bangladesh", "Germany", "Argentina", "Brazil", "Canada", "Greece", "Russia", "Sweden"].shuffled()
  @State private var correctAnswer = Int.random(in: 0...2)
  @State private var score = 0
  @State private var showingScore = false
  @State private var scoreTitle = ""

  var body: some View {
    ZStack {
      LinearGradient(gradient: Gradient(colors: [.black, .white]),
                     startPoint: .top,
                     endPoint: .bottom)
      .edgesIgnoringSafeArea(.all)
      
      VStack(spacing: 30) {
        VStack {
          Text("Choose the flag")
            .foregroundColor(.white)
            .font(.headline)
          
          Text("\(countries[correctAnswer])")
            .foregroundColor(.white)
            .font(.largeTitle)
            .fontWeight(.black)
        }
        
        ForEach(0..<3) { number in
          Button {
            self.flagTapped(number)
            self.showingScore = true
          } label: {
            Image(self.countries[number])
              .renderingMode(.original)
              .frame(width: 250, height: 125)
              .clipShape(Capsule())
              .overlay(Capsule().stroke(Color.black, lineWidth: 3))
              .shadow(color: .black, radius: 2)
          }
        }
        
        Text("Score: \(score)")
          .font(.largeTitle)
          .fontWeight(.black)
        
        Spacer()
      }
    }
    .alert(isPresented: $showingScore) {
      Alert(title: Text("\(scoreTitle)"), 
            message: Text("Score \(score)"),
            dismissButton: .default(Text("continue")) {
        self.askQuestion()
      })
    }
  }
  
  private func askQuestion() {
    countries.shuffle()
    correctAnswer = Int.random(in: 0...2)
  }
  
  private func flagTapped(_ number: Int) {
    if number == correctAnswer {
      scoreTitle = "U're right"
      score += 1
    } else {
      scoreTitle = "Wrong, It's the flag for \(countries[number])"
      score -= 1
    }
  }
}

#Preview {
  ContentView()
}
