//
//  Untitled.swift
//  SATisfyingPrep
//
//  Created by Scholar on 7/29/25.
//

import Foundation
import SwiftData


@Model
class Questions {
    var questions: String
    var possibleAnswers: Array<String>
    var rightAnswer: String
    
    init(questions: String, possibleAnswers: Array<String>, rightAnswer: String) {
        self.questions = questions
        self.possibleAnswers = possibleAnswers
        self.rightAnswer = rightAnswer
    }//init
    func correctAnswer(rightAnswer: String) -> String{
        return rightAnswer
    }
    
}//class
