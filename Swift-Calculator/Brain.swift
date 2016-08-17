//
//  Brain.swift
//  Swift-Calculator
//
//  Created by Ross Gottschalk on 8/16/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

import Foundation
class Brain
{
    var answer: String
    var operand1: String
    var operand2: String
    var operatorType: String
    
    var operatorChosen: Bool
    
    var answerAsNumber = 0.0
    var operand1AsNumber = 0.0
    var operand2AsNumber = 0.0
    
    
    init()
    {
        answer = ""
        operand1 = ""
        operand2 = ""
        operatorType = "not selected"
        operatorChosen = false
    }
    
    func performCalculationIfPossible(specificOperator: String) -> String
    {
        operand1AsNumber = Double(operand1)!
        operand2AsNumber = Double(operand2)!
        switch specificOperator
        {
        case "/":
            if operand2AsNumber != 0
            {
                answerAsNumber = operand1AsNumber / operand2AsNumber
            }
            else
            {
                answer = "Error"
            }
        case "x":
            answerAsNumber = operand1AsNumber * operand2AsNumber
        case "-":
            answerAsNumber = operand1AsNumber - operand2AsNumber
        case "+":
            answerAsNumber = operand1AsNumber + operand2AsNumber
        default:
            break
        }
        if answer != "Error"
        {
            answer = String(format: "%g", answerAsNumber)
        }
        return answer
    }
    
    
    func clearBrain()
    {
        answer = ""
        operand1 = ""
        operand2 = ""
        operatorType = "not selected"
        
        answerAsNumber = 0.0
        operand1AsNumber = 0.0
        operand2AsNumber = 0.0
    }
}
