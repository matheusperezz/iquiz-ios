//
//  Question.swift
//  iQuiz2
//
//  Created by ALURA on 20/04/23.
//

import Foundation

struct Question {
    var title: String
    var answers: [String]
    var correctAnswer: Int
}

let questions: [Question] = [
    Question(title: "What's the spell that can be used to disarm your opponent?", answers: ["Expecto Patronum", "Avada Kedavra", "Expelliarmus"], correctAnswer: 2),
    
    Question(title: "What is the name of Aokiji's devil fruit?", answers: ["Hie Hie No Mi", "Mera Mera No Mi", "Hito Hito No Mi"], correctAnswer: 0),
    
    Question(title: "What is the name of Akainu's devil fruit?", answers: ["Moku Moku No Mi", "Magu Magu No Mi", "Mera Mera No Mi"], correctAnswer: 1),]
