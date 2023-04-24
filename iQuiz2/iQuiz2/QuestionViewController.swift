//
//  QuestionViewController.swift
//  iQuiz2
//
//  Created by ALURA on 19/04/23.
//

import UIKit

class QuestionViewController: UIViewController {
    
    var currentScore = 0
    var questionNumber = 0
    
    @IBOutlet var answButtons: [UIButton]!
    @IBOutlet weak var questionTitleLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
        setupQuestions()
    }
    
    func setupLayout() {
        navigationItem.hidesBackButton = true
        questionTitleLabel.numberOfLines = 0
        questionTitleLabel.textAlignment = .center
        for btn in answButtons {
            btn.layer.cornerRadius = 12.0
        }
    }
    
    @objc func setupQuestions() {
        questionTitleLabel.text = questions[questionNumber].title
        for btn in answButtons {
            let buttonTitle = questions[questionNumber].answers[btn.tag]
            btn.setTitle(buttonTitle, for: .normal)
            btn.backgroundColor = UIColor(red: 116/255, green: 50/255, blue: 255/255, alpha: 1.0)
        }
    }
    
    @IBAction func answerSelected(_ sender: UIButton) {
        let isAnswerCorrect = questions[questionNumber].correctAnswer == sender.tag
        
        if (isAnswerCorrect) {
            currentScore += 1
            sender.backgroundColor = UIColor(red: 11/255, green: 161/255, blue: 53/255, alpha: 1)
        } else {
            sender.backgroundColor = UIColor(red: 211/255, green: 17/255, blue: 17/255, alpha: 1)
        }
        
        if (questionNumber < questions.count - 1){
            questionNumber += 1
            Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(setupQuestions), userInfo: nil, repeats: false)
        } else {
            navigateToPerformanceScreen()
        }
        
    }
    
    func navigateToPerformanceScreen(){
        performSegue(withIdentifier: "goToPerformanceView", sender: nil)
    }
    
    // Called before a transition between screens
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let performanceVC = segue.destination as? PerformanceViewController else { return }
        performanceVC.score = currentScore
    }

}
