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
        NavigationStack {
            ZStack {
                Color("backgroundPurple")
                    .ignoresSafeArea()
                VStack(spacing: 20) {
                    Button("Calculate Score") {
                        score = calculateScore(correctAnswers: correctAnswers, userAnswers: userAnswers)
                        print("User score: \(score ?? 0) out of 9")
                    }
                    .font(.title2)
                    .fontWeight(.medium)
                    .foregroundColor(Color.white)
                    .padding()
                    .cornerRadius(10)
                    .frame(width: 400, height: 60)

                    if let score = score {
                        Text("Your score: \(score) / 9")
                            .font(.headline)
                            .foregroundColor(.white)
                    }
                    
                    // Ensure the NavigationLink is outside of the button
                    NavigationLink(destination: buttonSATwork()) {
                        Text("Back to homepage!")
                            .font(.title2)
                            .fontWeight(.medium)
                            .foregroundColor(Color.white)
                            .padding(.leading, 6.0)
                            .frame(width: 125, height: 60.0)
                            .cornerRadius(10)
                    }
                }
                .padding()
            }
            .buttonStyle(.borderedProminent)
            .tint(.brightPink)
            .ignoresSafeArea()
        }
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
    ScorePage(correctAnswers: ["A", "B", "C", "D"], userAnswers: ["A", "B", "C", "D"])
}
