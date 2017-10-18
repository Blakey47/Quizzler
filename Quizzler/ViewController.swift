//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//
//  Skeleton Project cloned on 15/10/2017
//  Darragh Blake
//

import UIKit

class ViewController: UIViewController {
    
    let allQuestions = QuestionBank()
    var pickedAnswer : Bool = false
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        questionLabel.text = allQuestions.list[0].questionText
        
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
        
        if sender.tag == 1 {
            pickedAnswer = true
        } else if sender.tag == 2 {
            pickedAnswer = false
        }
        
        checkAnswer()
        
    }
    
    
    func updateUI() {
        
    }
    

    func nextQuestion() {
        
    }
    
    
    func checkAnswer() {
        
        let correctAnswer = allQuestions.list[0].answer
        
        if correctAnswer == pickedAnswer {
            print("Your choice is correct.")
        } else {
            print("Your choice was inccorect.")
        }
        
    }
    
    
    func startOver() {
        
    }
    

    
}
