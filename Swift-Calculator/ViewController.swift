//
//  ViewController.swift
//  Swift-Calculator
//
//  Created by Ross Gottschalk on 8/16/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var displayLabel: UILabel!
    
    var calcBrain = Brain()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        calcBrain.operatorType = "not selected"
        displayLabel.text = ""
    }
    
    override func didReceiveMemoryWarning()
        
    {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func numberTapped(_ sender: UIButton)
    {
        let number = sender.currentTitle!
        let newDisplayText = calcBrain.add(operand: number)
        displayLabel.text = newDisplayText
        
    }
    
    @IBAction func operatorTapped(_ sender: UIButton)
    {
        calcBrain.operatorChosen = true
        calcBrain.operatorType = sender.currentTitle!
    }
    
    @IBAction func equalsTapped(_ sender: UIButton)
    {
        let theAnswer = calcBrain.performCalculationIfPossible(specificOperator: calcBrain.operatorType)
        displayLabel.text = theAnswer
    }
    
    @IBAction func clearTapped(_ sender: AnyObject)
    {
        calcBrain.clearBrain()
        displayLabel.text = ""
    }
}

