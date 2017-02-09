//
//  ViewController.swift
//  testing stepper 1
//
//  Created by 2017andreworosco on 1/25/17.
//  Copyright © 2017 2017andreworosco. All rights reserved.
//

import UIKit
//var StoredVal : Values?



class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*stepper.wraps = false
        stepper.autorepeat = true
        stepper.maximumValue = 10*/
        stepper.isContinuous = true
        
    }
    
    @IBOutlet weak var functionDisplay: UILabel!
    @IBOutlet weak var valueLabel: UILabel!
    
    @IBOutlet weak var stepper: UIStepper!
    @IBAction func stepperValueChange(_ sender: UIStepper) {
        //valueLabel.text = Int(sender.value).description
        
        //StoredVal!.Child = Int(sender.value)
        
        //valueLabel.text = StoredVal?.Child.description
        
        
        
       valueCount["childCount"]! = Int(sender.value)
        
        valueLabel.text = valueCount["childCount"]!.description
        
        
    
        
    }
    @IBAction func confirmButton(_ sender: UILabel) {
        functionDisplay.text = calculatorreturn().description
        
        moneyTotal.text = totalHold.description
    }
    
    @IBOutlet weak var StudentWoCount: UILabel!

    @IBOutlet weak var StudentWoStepper: UIStepper!
    
    @IBAction func StudentWoAction(_ sender: UIStepper) {
        valueCount["studentWo"]! = Int(sender.value)
        
        StudentWoCount.text = valueCount["studentWo"]!.description
        
        
    }
    //below is meant to reset current tally
    
    @IBAction func next(_ sender: UILabel) {
        
        StudentWoStepper.minimumValue = 0
        StudentWoCount.text = "0"//comment here
        valueCount["studentWo"]! = 0
        
        
        valueLabel.text = "0"
        stepper.minimumValue = 0
        valueCount["childCount"]! = 0
        
        
        functionDisplay.text = "0"
    }
    
    @IBOutlet weak var moneyTotal: UILabel!
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

