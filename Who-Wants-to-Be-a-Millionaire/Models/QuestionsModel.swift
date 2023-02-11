//
//  QuestionsModel.swift
//  Who-Wants-to-Be-a-Millionaire
//
//  Created by иван Бирюков on 09.02.2023.
//

import Foundation

struct QuestionsModel {
    let text: String

    let answers: [String]

    let rightAnswer: String

    init(q: String, a: [String], correctAnswer: String) {
        text = q
        answers = a
        rightAnswer = correctAnswer
    }
}
