//
//  ViewController.swift
//  BullsEye
//
//  Created by Ivan on 03.11.2025.
//

import UIKit

class ViewController: UIViewController {

    var currentValue: Int = 50
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        return super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showAlert() {
        
        let message = "The value of the slider is now: \(currentValue)"
        
        
        let alert = UIAlertController(title: "Hello, world!", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        
    }
    
    @IBAction func sliderMoved(_ slider: UISlider) {
        currentValue = lroundf(slider.value)
        print("The value of the slider is now: \(currentValue)")
    }
    
    
    
}

