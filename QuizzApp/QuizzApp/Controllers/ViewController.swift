//
//  ViewController.swift
//  QuizzApp
//
//  Created by Claudia Cavalini Maganhi on 17/04/20.
//  Copyright © 2020 Claudia Cavalini Maganhi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    @IBOutlet var buttonContainerViewCollection: [UIView]!
    
    var quizz = Quizz()

    override func viewDidLoad() {
        super.viewDidLoad()
        setButtonViewStyle()
        updateUI()
    }
    
    private func setButtonViewStyle() {
        buttonContainerViewCollection.forEach { $0.applyBorderAndRoundStyle() }
    }

    @IBAction func answerTapped(_ sender: UIButton) {
        guard let userAnswer = sender.currentTitle else { return }
        let userIsRight = quizz.checkAnswer(userAnswer: userAnswer)
        
        if userIsRight {
            sender.backgroundColor = #colorLiteral(red: 0.3333333333, green: 0.6823529412, blue: 0.5843137255, alpha: 1)
        } else {
            sender.backgroundColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        }
        quizz.nextQuestion()
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @objc func updateUI() {
        questionLabel.text = quizz.getQuestionText()
        progressBar.progress = quizz.getprogress()
        scoreLabel.text = "Score: \(quizz.getScore())"
        trueButton.backgroundColor = .clear
        falseButton.backgroundColor = .clear
        
    }
    
}



