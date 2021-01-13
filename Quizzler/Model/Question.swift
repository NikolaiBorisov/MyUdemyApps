//
//  Question.swift
//  Quizzler
//
//  Created by NIKOLAI BORISOV on 12.01.2021.
//

import Foundation

struct Question {
    let text: String
    let answers: [String]
    let rightAnswer: String
    
    init(q: String, a: [String], correctAnswer: String) {
        text = q
        answers = a
        rightAnswer = correctAnswer
    }
}
