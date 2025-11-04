//
//  ViewController.swift
//  BullsEye
//
//  Created by Ivan on 03.11.2025.
//

import UIKit

class ViewController: UIViewController {

    var currentValue: Int = 50
    var targetValue: Int = 0
    var score = 0
    var round = 0
    
    @IBOutlet weak var targerLabel: UILabel!
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var roundLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        currentValue = lroundf(slider.value)
//        targetValue = 1 + Int(arc4random_uniform(100))
        startNewRound()
        updateLabels()
    }

    override func didReceiveMemoryWarning() {
        return super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateLabels() {
        targerLabel.text = String(targetValue)
        scoreLabel.text = String(score)
        roundLabel.text = String(round)
    }
    
    func startNewRound() {
        round += 1
        targetValue = 1 + Int(arc4random_uniform(100))
        //currentValue = 50
        slider.value = Float(currentValue)
    }
    
    @IBAction func showAlert() {
        
        let difference = abs(currentValue - targetValue)
        
        let points = 100 - difference
        
        score += points
        
//        let message = "The value of the slider is: \(currentValue)" +
//        "\nThe target value is: \(targetValue)" +
//        "\nThe difference is: \(difference)"
        
        let message = "You scored \(points) points"
        
        let alert = UIAlertController(title: "Hello, world!", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        
        self.startNewRound()
        updateLabels()
    }
    
    @IBAction func sliderMoved(_ slider: UISlider) {
        currentValue = lroundf(slider.value)
        print("The value of the slider is now: \(currentValue)")
    }
    
    
    
}

