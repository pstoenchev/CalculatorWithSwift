//
//  calculatorButton.swift
//  CalculatorWithSwift
//
//  Created by Mac on 20.10.20.
//  Copyright © 2020 peter. All rights reserved.
//

import UIKit

@IBDesignable

final class CalculatorButton: UIButton {

    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
 
}
