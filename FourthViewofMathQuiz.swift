//
//  FourthViewofMathQuiz.swift
//  SATisfyingPrep
//
//  Created by Scholar on 7/30/25.
//

import SwiftUI

struct FourthViewofMathQuiz: View {
        @State private var answerMessage7 = "Waiting for your answer..."
        @State private var answerMessage8 = "Waiting for your answer..."
    var body: some View {
            var questions4 = ["Question 7:  Dominique is allowed to play up to 8 hours of video games this week. They want to play video games for at least 4 hours this weekend. Which of the following can be used to represent t, the number of hours they can play video games before the weekend?", "Question 8: Ele's car is x years old, and Kat's car is y years old. Kat's car is 3 times as old as Ele's car. If Kat's car is also 6 years older than Ele's car, which of the following systems of equations best models this situation?", "Question 9: Dante's goal this year is to read 100 books. The expression above models the number of books Dante has left to read m months after the beginning of the year. Based on the expression, how many books does Dante have left to read after 4 months?"]
        var answers4 = [["dj=68 and d-j = 20", "dj=68j and d+20 = j","d+j=68 and d+20 = j"], ["(0,6)", "(-6,6)", "(6,-6)", "(1,4)"]]
        var correctAnswers4 = ["d+j=68 and d+20 = j", "(6,-6)"]
    
            NavigationStack{
                ZStack{
                    Color("PeriWrinkle")
                        .ignoresSafeArea()
                    VStack{
                        Text("Math Quiz")
                            .bold()
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .underline()
                        //Spacer()
                        VStack{
                            Text(questions4[0])
                                .padding()
                                .font(.title)
                            
                            
                            //Q1
                            HStack{
                                ForEach(answers4[0], id: \.self) { answer in
                                    Button(action: {
                                        print(answer)
                                        if answer == correctAnswers4[0] {
                                            answerMessage7 = "You are correct!"
                                        } else {
                                            answerMessage7 = "You are incorrect!"
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
                            Text(answerMessage7) //Q1
//                            HStack{
//                                ForEach(answers4[1], id: \.self) { answer in
//                                    Button(action: {
//                                        print(answer)
//                                        if answer == correctAnswers4[1] {
//                                            answerMessage7 = "You are correct!"
//                                        } else {
//                                            answerMessage7 = "You are incorrect!"
//                                        }
//                                    }) {
//                                        Text(answer)
//                                            .padding()
//                                            .frame(maxWidth: .infinity)
//                                            .background(Color.blue.opacity(0.2))
//                                            .foregroundColor(.black)
//                                            .cornerRadius(8)
//                                    }
//                                }
//
//                            }
//                            Text(answerMessage7) //Q1
                            
                            //Q2
                            Text(questions4[1])
                                .padding()
                                .font(.title)
                            HStack{
                                ForEach(answers4[1], id: \.self) { answer in
                                    Button(action: {
                                        print("testing")
                                        print(answer)
                                        if answer == correctAnswers4[1] {
                                            answerMessage8 = "You are correct!"
                                        } else {
                                            answerMessage8 = "You are incorrect!"
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
                            Text(answerMessage8) //Q4
                            
                            NavigationLink(destination: FourthViewofMathQuiz()) {
                                Text("Next Page")
                                    .multilineTextAlignment(.center)
                            }
                                
                           
                            
                            
                            
                            
                            
                            
                            
                            
                        }
                        .padding()
                        
                    }
                }
                
            }
        }
    }


#Preview {
    FourthViewofMathQuiz()
}
