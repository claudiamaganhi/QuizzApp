//
//  ViewController.swift
//  QuizzApp
//
//  Created by Claudia Cavalini Maganhi on 17/04/20.
//  Copyright © 2020 Claudia Cavalini Maganhi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    @IBOutlet var buttonContainerViewCollection: [UIView]!

    override func viewDidLoad() {
        super.viewDidLoad()
        setButtonViewStyle()
        progressBar.progress = 0.7
    }
    
    private func setButtonViewStyle() {
        buttonContainerViewCollection.forEach { $0.applyBorderAndRoundStyle() }
    }

    @IBAction func answerTapped(_ sender: UIButton) {
    }
    
}

