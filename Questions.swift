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
    var phrasesToBold: [String]?
    
    init(questions: String, possibleAnswers: Array<String>, rightAnswer: String, phrasesToBold: [String]? = nil) {
        self.questions = questions
        self.possibleAnswers = possibleAnswers
        self.rightAnswer = rightAnswer
        self.phrasesToBold = phrasesToBold
    }//init
    func correctAnswer(rightAnswer: String) -> String{
        return rightAnswer
    }
    
}//class
