//
//  ViewController.swift
//  iQuiz2
//
//  Created by ALURA on 19/04/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
    }

    @IBOutlet weak var buttonStartQuiz: UIButton!
    
    @IBAction func pressedButton(_ sender: Any) {
        
    }
    
    func setupLayout(){
        buttonStartQuiz.layer.cornerRadius = 12.0
        navigationItem.hidesBackButton = true
    }
    
}
