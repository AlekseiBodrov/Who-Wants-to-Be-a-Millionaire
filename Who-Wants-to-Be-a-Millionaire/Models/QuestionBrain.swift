//
//  QuestionBrain.swift
//  Who-Wants-to-Be-a-Millionaire
//
//  Created by иван Бирюков on 11.02.2023.
//


import UIKit

struct QuestionsBrain {
    
    var questionNumber = 0
    var questionHardnessNumber = 0
    var questionLibrary = QuestionsLibrary()
    var questionRightAnswer: String?

    
    func getAllQuestions() -> [[QuestionsModel]] {
        return questionLibrary.allQuestions
    }
    
    func getQuestionText() -> String {
        let getQuestionText = getAllQuestions()
        let questionText = getQuestionText[questionHardnessNumber][questionNumber].text
        return questionText
    }
 
    func getAllAnswers() -> [String]{
        let getQuestionAnswers = getAllQuestions()
        let questionAnswers = getQuestionAnswers[questionHardnessNumber][questionNumber].answers
        return questionAnswers
    }
    
    func getAccessToRightAnswer() -> String{
        let questionAnswers = getAllQuestions()
        let questionRightAnswer = questionAnswers[questionHardnessNumber][questionNumber].rightAnswer
        return questionRightAnswer
    }

    mutating func nextQuestion() {
        if questionHardnessNumber < 3 {
            // do nothing
        } else{
            questionHardnessNumber = 0
        }
        
        if questionNumber - 1 < 5 {
            questionNumber += 1
        } else {
            questionNumber = 0
            questionHardnessNumber += 1
        }
    }
    
    mutating func checkAnswer(userAnswer: String) -> Bool {
        if userAnswer == questionRightAnswer {
            return true
        } else {
            return false
        }
    }
}
