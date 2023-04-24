//
//  PerformanceViewController.swift
//  iQuiz2
//
//  Created by ALURA on 24/04/23.
//

import UIKit

class PerformanceViewController: UIViewController {
    
    var score : Int?

    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var percentLabel: UILabel!
    
    @IBOutlet weak var buttonRestartQuiz: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
        setupPerformance()
    }
    
    func setupLayout(){
        buttonRestartQuiz.layer.cornerRadius = 12.0
        navigationItem.hidesBackButton = true
    }
    
    func setupPerformance(){
        guard let score = score else { return }
        resultLabel.text = "You got \(score) questions of \(questions.count)"
        
        let percentScore = (score * 100) / questions.count
        
        percentLabel.text = "Final percent score: \(percentScore)%"
        
    }
}
