//
//  MathQuestionsView.swift
//  SATisfyingPrep
//
//  Created by Scholar on 7/29/25.
//

import SwiftUI

struct MathQuestionsView: View {
    @State private var selectedAnswer: String? = nil
    @State private var answerMessage = "Waiting for your answer..."
    @State private var answerMessage2 = "Waiting for your answer..."
    

    //    @State private var text: String
    //    @State private var answers: [String]
    //    @State private var correctAnswer: String
    //    @State private var incorrectAnswer: String
    var body: some View {
        var questions = ["Question 1: If  2 = -1 + p, what is the value of p?", "Question 2: Poppy the dog weighs p pounds, and Yumi the cat weighs y pounds. If Poppy weighs 36 more pounds than Yumi does, which of the following equations correctly describes the relationship between their weights?", "Question 3: What is the slope of a line that passes through the points (-3,-5) and (1,7) in the xy-plane?", "Question 4: Stephanie is twice as old as her sister Rosa. If Stephanie is 18 years old, how old is Rosa?", "Question 5: Toby wants to buy a dress and a pair of jeans. The pair of jeans and the dress cost $68 together, and the pair of jeans is $20 more expensive than the dress. Which of the following systems of equations correctly models this situation in terms d, the price of the dress in dollars, and j, and price of the pair of jeans in dollars?", "Question 6: 4x + 2y = 12, -4x - 5y = 6. What is the solution (x,y) to the given system of equations?", "Question 7:  Dominique is allowed to play up to 8 hours of video games this week. They want to play video games for at least 4 hours this weekend. Which of the following can be used to represent t, the number of hours they can play video games before the weekend?", "Question 8: Ele's car is x years old, and Kat's car is y years old. Kat's car is 3 times as old as Ele's car. If Kat's car is also 6 years older than Ele's car, which of the following systems of equations best models this situation?", "Question 9: Dante's goal this year is to read 100 books. The expression above models the number of books Dante has left to read m months after the beginning of the year. Based on the expression, how many books does Dante have left to read after 4 months?"]
        var answers = [["3", "-1", "1", "4"], ["p-y=36", "p+y=36", "p+36=y", "y-p=36"]]
        var correctAnswers = ["3" ,"p-y=36"]
       
        //var q1correctAnswer = "3"
      

        
        
        
        //var correctAnswer: String
        // var incorrectAnswer: String
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
                        Text(questions[0])
                            .padding()
                            .font(.title)
                        
                        
                        //Q1
                        HStack{
                            ForEach(answers[0], id: \.self) { answer in
                                Button(action: {
                                    print("testing")
                                    print(answer)
                                    if answer == correctAnswers[0] {
                                        answerMessage = "You are correct!"
                                    } else {
                                        answerMessage = "You are incorrect!"
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
                        Text(answerMessage) //Q1
                        
                        //Q2
                        Text(questions[1])
                            .padding()
                            .font(.title)
                        HStack{
                            ForEach(answers[1], id: \.self) { answer in
                                Button(action: {
                                    print("testing")
                                    print(answer)
                                    if answer == correctAnswers[1] {
                                        answerMessage2 = "You are correct!"
                                    } else {
                                        answerMessage2 = "You are incorrect!"
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
                        Text(answerMessage2) //Q2
                        
                        NavigationLink(destination: SecondViewofMathQuiz()) {
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
    MathQuestionsView()
}
