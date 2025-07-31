//
//  EnglishQuestionsView.swift
//  SATisfyingPrep
//
//  Created by Scholar on 7/29/25.
//

import SwiftUI

struct EnglishQuestionsView: View {
    @State var feedback = ""
    @State var count = 0
    @State var countQ = 0
    @State private var answer = ""
    @State private var shuffled1: [Questions] = []
    @State private var currInd = 0
    var EnglishQ: [Questions] = [
        Questions(questions: "After a catastrophic storm, charitable organizations will help repair both a resident home and a shop owner storefront.", possibleAnswers: ["NO CHANGE", "a residents home and a shop owners storefront", "a resident’s home and a shop owners storefront", "a resident’s home and a shop owner’s storefront"], rightAnswer: "D"),
        
        Questions(questions: "The Phantom of the Opera holds the record for longest running Broadway show. Since its premiere in 1988, they have been staged nearly 11,500 times.", possibleAnswers: ["NO CHANGE", "one has", "he has", "it has"], rightAnswer: "D"),
        
        Questions(questions: "When a bear invades a campsite, it will often open camper's coolers and feast on their food.", possibleAnswers: ["NO CHANGE", "campers coolers", "campers' coolers", "campers' cooler's"], rightAnswer: "C"),
        
        Questions(questions: "The first large predators on Earth, according to some sources, was sea scorpions that grew to almost six feet in length.", possibleAnswers: ["NO CHANGE", "were", "is", "has been"], rightAnswer: "B"),
        
        Questions(questions: "Amelia Earhart disappeared while she was attempting to traverse the globe in 1937.", possibleAnswers: ["NO CHANGE", "she attempts", "she will attempt", "to attempt"], rightAnswer: "A"),
        
        Questions(questions: "A remarkably capable organ, an orchestration of physiological responses often happens in the human brain without an individual's knowledge. ", possibleAnswers: ["NO CHANGE", "the human brain often orchestrates psychological responses without any conscious effort on the part of an individual.", "psychological responses are often orchestrated by the human brain without any conscious effort on the part of an individual.", "individuals are often unaware of the psychological responses the human brain orchestrates."], rightAnswer: "B"),
        
        Questions(questions: "Solar charging kiosks are gaining popularity among entrepreneurs in Rwanda, where a sunny climate,_ periodic power outages, and busy executives have increased the demand for solar energy.", possibleAnswers: ["NO CHANGE", "climate", "climate:", "climate;"], rightAnswer: "A"),
        
        Questions(questions: "Baltimore, and its surrounding areas,_ have a population of about 2.7 million.", possibleAnswers: ["NO CHANGE", "Baltimore–and its surrounding areas,", "Baltimore, and its surrounding areas–", "Baltimore and its surrounding areas"], rightAnswer: "D"),
        
        Questions(questions: "Given that it is cheaper and more efficient, so ocean transportation, rather than air or roadway portage, carries the most commercial cargo worldwide.", possibleAnswers: ["NO CHANGE", "efficient so", "efficient,", "efficient"], rightAnswer: "C"),
        Questions(questions: "A supermoon happens at the closest point to Earth on the moon's orbit. Also known as the perigee.", possibleAnswers: ["NO CHANGE", "orbit also", "orbit; also", "orbit, also"], rightAnswer: "D"),
        Questions(questions: "Two-year degree programs are perhaps not as popular as four-year programs, but they can lead to lucrative careers:_ such as programming and web development.", possibleAnswers: ["NO CHANGE", "to lucrative careers", "to–lucrative careers", "to, lucrative careers"], rightAnswer: "B"),
        Questions(questions: "Although Benjamin Franklin excelled in science—and is often remembered for his experimental act of tying a key to a kite in a lightning storm—he considered himself foremost to be a publisher.", possibleAnswers: ["NO CHANGE", "was considering", "would consider", "considers"], rightAnswer: "A"),
        Questions(questions: "Having strict and sometimes unusual routines are common for many creative people who are trying to stay productive. For example, Franz Kafka wrote all through the night, while Ernest Hemingway was up every morning at 5:00am to write without disturbance.", possibleAnswers: ["NO CHANGE", "were", "is", "has been"], rightAnswer: "C"),
        Questions(questions: "Joining the list of edible objects that have traveled miles above the Earth, two Swedish men attached a doughnut to a weather balloon along with a camera in 2015.", possibleAnswers: ["NO CHANGE", "a doughnut was attached to a weather balloon and a camera by two Swedish men in 2015.", "a weather balloon and a camera were attached to a doughnut by two Swedish men in 2015.", "a camera attached to a weather balloon by two Swedish men accompanied a doughnut in 2015."], rightAnswer: "B"),
        Questions(questions: "Elon Musk's first spacecrafts name was Dragon, named after the 1963 song Puff, the Magic Dragon.", possibleAnswers: ["NO CHANGE", "Elon Musk’s first spacecraft’s", "Elon Musk’s first spacecrafts’", "Elon Musks first spacecraft’s"], rightAnswer: "B"),
        Questions(questions: "The Sasquatch, also known as Bigfoot, is rumored to be living; in the forests of the American Pacific Northwest. ", possibleAnswers: ["NO CHANGE", "living: in", "living in", "living. In"], rightAnswer: "C"),
        Questions(questions: "Woolly rhinos once made its home in places as diverse as Scotland and South Korea.", possibleAnswers: ["NO CHANGE", "his", "our", "their"], rightAnswer: "D"),
        Questions(questions: "Frogs—with the most brilliant colors and patterns—are often the most poisonous.", possibleAnswers: ["NO CHANGE", "Frogs, with the most brilliant patterns and colors–", "Frogs (with the most brilliant patterns and colors)", "Frogs with the most brilliant patterns and colors"], rightAnswer: "D"),
        Questions(questions: "Although Samuel Clemens was a prolific journalist while using his given name, he became one of the most famous fiction writers of all time while using his pen name, Mark Twain.", possibleAnswers: ["NO CHANGE", "name; he", "name he", "name. he"], rightAnswer: "A"),
        Questions(questions: "After the explorer Hernán Cortés arrived in South America, he is setting fire to all his ships, preventing his crew from returning home.", possibleAnswers: ["NO CHANGE", "has set fire to", "set fire to", "was set on fire by"], rightAnswer: "C")
    ]
    var currQ: Questions {
        if shuffled1.isEmpty {
            return EnglishQ[0]
        }
        return shuffled1[currInd]
    }//currq
    var body: some View {
        VStack {
            Text("Question \(currInd + 1)")
                .padding()
            Text(currQ.questions)
            Text("Options:")
                .padding()
            Text("A) \(currQ.possibleAnswers[0])")
            Text("B) \(currQ.possibleAnswers[1])")
            Text("C) \(currQ.possibleAnswers[2])")
            Text("D) \(currQ.possibleAnswers[3])")
            TextField("Type your answer here, and then click return.", text: $answer)
                .multilineTextAlignment(.center)
                .border(Color.black, width: 2)
                .onSubmit {
                    if answer.prefix(1).uppercased() == currQ.rightAnswer {
                        feedback = "Correct!"
                        count += 1
                    }//if
                    else {
                        feedback = "Incorrect...the correct answer is: \(currQ.rightAnswer)"
                    }//else
                    countQ += 1
                    answer = ""
                }//onsubmit
            Text(feedback)
            if currInd < (shuffled1.count - 1) {
                Button("Next Question") {
                    currInd += 1
                    feedback = ""
                }//button
            }//if
            else if currInd == (shuffled1.count - 1) && feedback != "" {
                Text("Quiz complete! Your score is \(count)/\(shuffled1.count)")
            }//elseif
        }//vstack
        .onAppear {
            shuffled1 = Array(EnglishQ.shuffled().prefix(10))
        }//onappear
    }//body
}//struct

#Preview {
    EnglishQuestionsView()
}

//var EnglishQ = [Questions] = [
//    Questions(questions: "After a catastrophic storm, charitable organizations will help repair both a resident home and a shop owner storefront.", possibleAnswers: ["NO CHANGE", "a residents home and a shop owners storefront", "a resident’s home and a shop owners storefront", "a resident’s home and a shop owner’s storefront"], rightAnswer: "a resident’s home and a shop owner’s storefront"),
//    
//    Questions(questions: "The Phantom of the Opera holds the record for longest running Broadway show. Since its premiere in 1988, they have been staged nearly 11,500 times.", possibleAnswers: ["NO CHANGE", "one has", "he has", "it has"], rightAnswer: "it has"),
//    
//    Questions(questions: "When a bear invades a campsite, it will often open camper's coolers and feast on their food.", possibleAnswers: ["NO CHANGE", "campers coolers", "campers' coolers", "campers' cooler's"], rightAnswer: "campers' coolers"),
//    Questions(questions: "The first large predators on Earth, according to some sources, was sea scorpions that grew to almost six feet in length.", possibleAnswers: ["NO CHANGE", "were", "is", "has been"], rightAnswer: "were")
//]
