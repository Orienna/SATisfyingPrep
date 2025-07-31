//
// EnglishQuestionsView.swift
// SATisfyingPrep
//
// Created by Scholar on 7/29/25.
//

import SwiftUI

struct EnglishQuestionsView: View {
    @State private var feedback = ""
    @State private var score = 0
    @State private var questionCount = 0
    @State private var answer = ""
    @State private var shuffledQuestions: [Questions] = []
    @State private var currentIndex = 0

    func formattedQuestion(_ question: Questions) -> Text {
        guard let phrases = question.phrasesToBold, !phrases.isEmpty else {
            return Text(question.questions)
        }
        var text = Text("")
        var remaining = question.questions
        for phrase in phrases {
            if let range = remaining.range(of: phrase) {
                let before = String(remaining[..<range.lowerBound])
                text = text + Text(before)
                text = text + Text(phrase).bold()
                remaining = String(remaining[range.upperBound...])
            }
        }
        text = text + Text(remaining)
        return text
    }

    // Your full list of Questions using the Questions class
    let allQuestions: [Questions] = [
        Questions(
            questions: "After a catastrophic storm, charitable organizations will help repair both a resident home and a shop owner storefront.",
            possibleAnswers: ["NO CHANGE", "a residents home and a shop owners storefront", "a resident’s home and a shop owners storefront", "a resident’s home and a shop owner’s storefront"],
            rightAnswer: "D",
            phrasesToBold: ["a resident home and a shop owner storefront"]
        ),
        Questions(
            questions: "The Phantom of the Opera holds the record for longest running Broadway show. Since its premiere in 1988, they have been staged nearly 11,500 times.",
            possibleAnswers: ["NO CHANGE", "one has", "he has", "it has"],
            rightAnswer: "D",
            phrasesToBold: ["they have"]
        ),
        Questions(
            questions: "When a bear invades a campsite, it will often open camper's coolers and feast on their food.",
            possibleAnswers: ["NO CHANGE", "campers coolers", "campers' coolers", "campers' cooler's"],
            rightAnswer: "C",
            phrasesToBold: ["camper's coolers"]
        ),
        Questions(
            questions: "The first large predators on Earth, according to some sources, was sea scorpions that grew to almost six feet in length.",
            possibleAnswers: ["NO CHANGE", "were", "is", "has been"],
            rightAnswer: "B",
            phrasesToBold: ["was"]
        ),
        Questions(
            questions: "Amelia Earhart disappeared while she was attempting to traverse the globe in 1937.",
            possibleAnswers: ["NO CHANGE", "she attempts", "she will attempt", "to attempt"],
            rightAnswer: "A",
            phrasesToBold: ["she was attempting"]
        ),
        Questions(
            questions: "A remarkably capable organ, an orchestration of physiological responses often happens in the human brain without an individual's knowledge.",
            possibleAnswers: ["NO CHANGE", "the human brain often orchestrates psychological responses without any conscious effort on the part of an individual.", "psychological responses are often orchestrated by the human brain without any conscious effort on the part of an individual.", "individuals are often unaware of the psychological responses the human brain orchestrates."],
            rightAnswer: "B",
            phrasesToBold: ["an orchestration of physiological responses often happens in the human brain without an individual's knowledge."]
        ),
        Questions(
            questions: "Solar charging kiosks are gaining popularity among entrepreneurs in Rwanda, where a sunny climate,_ periodic power outages, and busy executives have increased the demand for solar energy.",
            possibleAnswers: ["NO CHANGE", "climate", "climate:", "climate;"],
            rightAnswer: "A",
            phrasesToBold: ["climate,"]
        ),
        Questions(
            questions: "Baltimore, and its surrounding areas,_ have a population of about 2.7 million.",
            possibleAnswers: ["NO CHANGE", "Baltimore–and its surrounding areas,", "Baltimore, and its surrounding areas–", "Baltimore and its surrounding areas"],
            rightAnswer: "D",
            phrasesToBold: ["Baltimore, and its surrounding areas,"]
        ),
        Questions(
            questions: "Given that it is cheaper and more efficient, so ocean transportation, rather than air or roadway portage, carries the most commercial cargo worldwide.",
            possibleAnswers: ["NO CHANGE", "efficient so", "efficient,", "efficient"],
            rightAnswer: "C",
            phrasesToBold: ["efficient, so"]
        ),
        Questions(
            questions: "A supermoon happens at the closest point to Earth on the moon's orbit. Also known as the perigee.",
            possibleAnswers: ["NO CHANGE", "orbit also", "orbit; also", "orbit, also"],
            rightAnswer: "D",
            phrasesToBold: ["orbit. Also"]
        ),
        Questions(
            questions: "Two-year degree programs are perhaps not as popular as four-year programs, but they can lead to lucrative careers:_ such as programming and web development.",
            possibleAnswers: ["NO CHANGE", "to lucrative careers", "to–lucrative careers", "to, lucrative careers"],
            rightAnswer: "B",
            phrasesToBold: ["to lucrative careers:"]
        ),
        Questions(
            questions: "Although Benjamin Franklin excelled in science—and is often remembered for his experimental act of tying a key to a kite in a lightning storm—he considered himself foremost to be a publisher.",
            possibleAnswers: ["NO CHANGE", "was considering", "would consider", "considers"],
            rightAnswer: "A",
            phrasesToBold: ["considered"]
        ),
        Questions(
            questions: "Having strict and sometimes unusual routines are common for many creative people who are trying to stay productive. For example, Franz Kafka wrote all through the night, while Ernest Hemingway was up every morning at 5:00am to write without disturbance.",
            possibleAnswers: ["NO CHANGE", "were", "is", "has been"],
            rightAnswer: "C",
            phrasesToBold: ["are"]
        ),
        Questions(
            questions: "Joining the list of edible objects that have traveled miles above the Earth, two Swedish men attached a doughnut to a weather balloon along with a camera in 2015.",
            possibleAnswers: ["NO CHANGE", "a doughnut was attached to a weather balloon and a camera by two Swedish men in 2015.", "a weather balloon and a camera were attached to a doughnut by two Swedish men in 2015.", "a camera attached to a weather balloon by two Swedish men accompanied a doughnut in 2015."],
            rightAnswer: "B",
            phrasesToBold: ["two Swedish men attached a doughnut to a weather balloon along with a camera in 2015."]
        ),
        Questions(
            questions: "Elon Musk's first spacecrafts name was Dragon, named after the 1963 song Puff, the Magic Dragon.",
            possibleAnswers: ["NO CHANGE", "Elon Musk’s first spacecraft’s", "Elon Musk’s first spacecrafts’", "Elon Musks first spacecraft’s"],
            rightAnswer: "B",
            phrasesToBold: ["Elon Musk's first spacecrafts"]
        ),
        Questions(
            questions: "The Sasquatch, also known as Bigfoot, is rumored to be living; in the forests of the American Pacific Northwest.",
            possibleAnswers: ["NO CHANGE", "living: in", "living in", "living. In"],
            rightAnswer: "C",
            phrasesToBold: ["living; in"]
        ),
        Questions(
            questions: "Woolly rhinos once made its home in places as diverse as Scotland and South Korea.",
            possibleAnswers: ["NO CHANGE", "his", "our", "their"],
            rightAnswer: "D",
            phrasesToBold: ["its"]
        ),
        Questions(
            questions: "Frogs—with the most brilliant colors and patterns—are often the most poisonous.",
            possibleAnswers: ["NO CHANGE", "Frogs, with the most brilliant patterns and colors–", "Frogs (with the most brilliant patterns and colors)", "Frogs with the most brilliant patterns and colors"],
            rightAnswer: "D",
            phrasesToBold: ["Frogs—with the most brilliant colors and patterns—"]
        ),
        Questions(
            questions: "Although Samuel Clemens was a prolific journalist while using his given name, he became one of the most famous fiction writers of all time while using his pen name, Mark Twain.",
            possibleAnswers: ["NO CHANGE", "name; he", "name he", "name. he"],
            rightAnswer: "A",
            phrasesToBold: ["name, he"]
        ),
        Questions(
            questions: "After the explorer Hernán Cortés arrived in South America, he is setting fire to all his ships, preventing his crew from returning home.",
            possibleAnswers: ["NO CHANGE", "has set fire to", "set fire to", "was set on fire by"],
            rightAnswer: "C",
            phrasesToBold: ["is setting fire to"]
        )
    ]

    var currentQuestion: Questions {
        if shuffledQuestions.isEmpty {
            return allQuestions[0]
        }
        return shuffledQuestions[currentIndex]
    }

    var body: some View {
        VStack {
            Text("Question \(currentIndex + 1)")
                .padding()

            formattedQuestion(currentQuestion)
                .font(.system(size: 18))
                .multilineTextAlignment(.center)
                .padding()

            Text("Options:")
                .padding()

            ForEach(0..<4) { i in
                Text("\(Character(UnicodeScalar(65 + i)!))) \(currentQuestion.possibleAnswers[i])")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
            }

            TextField("Type your answer here, click return after answering.", text: $answer)
                .multilineTextAlignment(.center)
                .frame(height: 50)
                .frame(maxWidth: .infinity)
                .border(Color.black, width: 1)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.black, lineWidth: 2)
                )
                .padding(.horizontal, 10)
                .onSubmit {
                    let userAnswer = answer.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
                    if userAnswer == currentQuestion.rightAnswer {
                        feedback = "Correct!"
                        score += 1
                    } else {
                        feedback = "Incorrect...the correct answer is: \(currentQuestion.rightAnswer)"
                    }
                    questionCount += 1
                    answer = ""
                }

            Text(feedback)
                .padding()

            if currentIndex < (shuffledQuestions.count - 1) {
                Button("Next Question") {
                    currentIndex += 1
                    feedback = ""
                }
                .padding()
            } else if currentIndex == (shuffledQuestions.count - 1) && !feedback.isEmpty {
                Text("Quiz complete! Your score: \(score) / \(shuffledQuestions.count)")
                    .padding()
            }
        }
        .onAppear {
            shuffledQuestions = allQuestions.shuffled()
        }
    }
}

struct EnglishQuestionsView_Previews: PreviewProvider {
    static var previews: some View {
        EnglishQuestionsView()
    }
}

//var EnglishQ = [Questions] = [
//  Questions(questions: "After a catastrophic storm, charitable organizations will help repair both a resident home and a shop owner storefront.", possibleAnswers: ["NO CHANGE", "a residents home and a shop owners storefront", "a resident’s home and a shop owners storefront", "a resident’s home and a shop owner’s storefront"], rightAnswer: "a resident’s home and a shop owner’s storefront"),
//
//  Questions(questions: "The Phantom of the Opera holds the record for longest running Broadway show. Since its premiere in 1988, they have been staged nearly 11,500 times.", possibleAnswers: ["NO CHANGE", "one has", "he has", "it has"], rightAnswer: "it has"),
//
//  Questions(questions: "When a bear invades a campsite, it will often open camper's coolers and feast on their food.", possibleAnswers: ["NO CHANGE", "campers coolers", "campers' coolers", "campers' cooler's"], rightAnswer: "campers' coolers"),
//  Questions(questions: "The first large predators on Earth, according to some sources, was sea scorpions that grew to almost six feet in length.", possibleAnswers: ["NO CHANGE", "were", "is", "has been"], rightAnswer: "were")
//]







