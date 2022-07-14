//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Сергей Юдин on 14.07.2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmiValue: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValueCalc = weight / (height * height)
        
        if bmiValueCalc < 18.5 {
            bmiValue = BMI(value: bmiValueCalc, advice: "Ешьте побольше пирожков", color: .blue)
        } else if bmiValueCalc < 24.9 {
            bmiValue = BMI(value: bmiValueCalc, advice: "У вас отличный вес", color: .green)
        } else {
            bmiValue = BMI(value: bmiValueCalc, advice: "Ешьте поменьше пирожков", color: .red)
        }
    }
    
    func getBMIValue() -> String {
        let stringBMI = String(format: "%.1f", bmiValue?.value ?? "0.0")
        return stringBMI
    }
    
    func getAdvice() -> String {
        return bmiValue?.advice ?? "No Advice"
    }
    
    func getColor() -> UIColor {
        return bmiValue?.color ?? UIColor.black
    }
}
