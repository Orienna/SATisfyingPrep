
//
// FifthViewofMathQuizworking.swift
// SATisfyingPrep
//
// Created by Scholar on 7/31/25.
//
import SwiftUI
struct FifthViewofMathQuizworking: View {
  @State private var answerMessage11 = "Waiting for your answer..."
  var body: some View {
      let questions6 = ["Question 9: Dante's goal this year is to read 100 books. The expression above models the number of books Dante has left to read m months after the beginning of the year. Based on the expression, how many books does Dante have left to read after 4 months?"]
      let answers6 = [["60","50", "100", "104"]]
      let correctAnswers6 = ["60"]
    NavigationStack{
      ZStack{
        Color("backgroundPurple")
          .ignoresSafeArea()
        VStack{
          Text("Math Quiz")
            .bold()
            .font(.largeTitle)
            .fontWeight(.heavy)
            .underline()
          //Spacer()
          VStack{
            Text(questions6[0])
              .padding()
              .font(.title)
            //Q1
            HStack{
              ForEach(answers6[0], id: \.self) { answer in
                Button(action: {
                  print(answer)
                  if answer == correctAnswers6[0] {
                    answerMessage11 = "You are correct!"
                    GlobalData.scoreCount += 1
                  } else {
                    answerMessage11 = "You are incorrect!"
                  }
                }) {
                  Text(answer)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue.opacity(0.2))
                    .foregroundColor(.black)
                    .cornerRadius(8)
                }
              }
            }
            Text(answerMessage11) //Q1
            //              HStack{
            //                ForEach(answers6[1], id: \.self) { answer in
            //                  Button(action: {
            //                    print(answer)
            //                    if answer == correctAnswers6[1] {
            //                      answerMessage11 = "You are correct!"
            //                    } else {
            //                      answerMessage11 = "You are incorrect!"
            //                    }
            //                  }) {
            //                    Text(answer)
            //                      .padding()
            //                      .frame(maxWidth: .infinity)
            //                      .background(Color.blue.opacity(0.2))
            //                      .foregroundColor(.black)
            //                      .cornerRadius(8)
            //                  }
            //                }
            //
            //              }
            //              Text(answerMessage11) //Q1
            NavigationLink(destination: ScorePage(correctAnswers: [], userAnswers: [])) {
              Text("Submit Quiz")
                .multilineTextAlignment(.center)
                .foregroundColor(Color.white)
                .frame(width: 100.0, height: 40)
                .background(Color.skyBlue)
                .cornerRadius(10)
            }
          }
            .padding()
          }
        }
      }
    }
  }
  #Preview {
  FifthViewofMathQuizworking()
}
