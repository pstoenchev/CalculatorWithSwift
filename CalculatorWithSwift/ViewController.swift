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
    
    @IBOutlet private weak var numberLabel: UILabel!
    
   private var userInput = ""
   private var fisrt = ""
   private var second = ""
   private var function = ""
   private var result = 0.0
   private var neshto = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // MARK: - enter numbers from 0 to 9 
    @IBAction func numbers(_ sender: UIButton) {
        if userInput.count <= 8 {
        userInput += String(sender.tag)
        numberLabel.text = userInput
        }
    }
    // MARK: - Clear Text Label
    @IBAction func deleteBtn(_ sender: UIButton) {
        userInput = ""
        numberLabel.text = "0"
        function = ""
        
    }
    // MARK: See result afrer operation
    @IBAction func equalBtn(_ sender: Any) {
        
        if fisrt.count > 0 {
        second = userInput
       
        var fisrtInput = 0.0
        var secondInput = 0.0
        fisrtInput = Double(fisrt)!
            secondInput = Double(second) ?? 0
            
            
            if function == "+" {
                result = fisrtInput + secondInput
                numberLabel.text = String(result)
                neshto = true
            }
        }
    }
    
    // MARK: - Add two number, example a + b = c
    @IBAction func addBtn(_ sender: Any) {
        fisrt = userInput
        function = "+"
        userInput = ""
        
    }
    
    @IBAction func dot(_ sender: Any) {
        
        if userInput.count <= 7 {
            userInput += "."
            numberLabel.text = "."
        }
    }
}

