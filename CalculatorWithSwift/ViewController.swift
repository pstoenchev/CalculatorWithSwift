//
//  ViewController.swift
//  CalculatorWithSwift
//
//  Created by Mac on 20.10.20.
//  Copyright © 2020 peter. All rights reserved.
//

import UIKit

// MARK: - Calculator View
final class ViewController: UIViewController {
    
    @IBOutlet weak var numberLabel: UILabel!
    
    private var userInput = ""
    var fisrt = ""
    var second = ""
    var function = ""
    var result = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // MARK: - enter numbers from 0 to 9 
    @IBAction func numbers(_ sender: UIButton) {
        userInput += String(sender.tag)
        numberLabel.text = userInput
    }
    // MARK: - Clear Text Label
    @IBAction func deleteBtn(_ sender: UIButton) {
        userInput = ""
        numberLabel.text = "0"
        
    }
    // MARK: See result afrer operation
    @IBAction func equalBtn(_ sender: Any) {
        second = userInput
        var fisrtInput = 0.0
        var secondInput = 0.0
        fisrtInput = Double(fisrt)!
        secondInput = Double(second)!
        
        if function == "+" {
            result = fisrtInput + secondInput
            numberLabel.text = String(result)
        }
    }
    
    // MARK: - Add two number, example a + b = c
    @IBAction func addBtn(_ sender: Any) {
        fisrt = userInput
        function = "+"
        userInput = ""
        
    }
}

