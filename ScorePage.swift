//
// FifthViewofMathQuiz.swift
// SATisfyingPrep
//
// Created by Scholar on 7/31/25.
//
import SwiftUI
struct ScorePage: View {
 @State var score: Int? = nil
  var correctAnswers: [String]
  var userAnswers: [String]
  var body: some View {
    VStack(spacing: 20) {
      Button("Calculate Score") {
        score = calculateScore(correctAnswers: correctAnswers, userAnswers: userAnswers)
        print("User score: \(score ?? 0) out of 9)")
      }
      if let score = score {
        Text("Your score: \(GlobalData.scoreCount) / 9")
          .font(.headline)
      }
    }
    .padding()
  }
  func calculateScore(correctAnswers: [String], userAnswers: [String]) -> Int {
    var score = 0
    for (index, correctAnswer) in correctAnswers.enumerated() {
      if index < userAnswers.count && userAnswers[index] == correctAnswer {
        score += 1
      }
    }
    return score
  }
}
#Preview {
  ScorePage(correctAnswers: [], userAnswers: [])
}
