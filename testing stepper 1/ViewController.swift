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
    var StoredValues = Values()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    @IBOutlet weak var functionDisplay: UILabel!
    @IBOutlet weak var valueLabel: UILabel!
    
    @IBOutlet weak var stepper: UIStepper!
    @IBAction func stepperValueChange(_ sender: UIStepper) {
       valueCount["childCount"]! = Int(sender.value)
        
        valueLabel.text = valueCount["childCount"]!.description
        
        
    }
    
    
    
    //purchase button to add the rest to the tally and reset the stepper and text values
    //claculates :subtotal button
    @IBAction func confirmButton(_ sender: UILabel) {
        functionDisplay.text = calculatorreturn().description
        
        
        StoredValues.TotMones = StoredValues.TotMones + Double(functionDisplay.text!)!
        StoredValues.totalChildCount = StoredValues.totalChildCount + Double(valueLabel.text!)!
        
        
        StudentWoStepper.minimumValue = 0
        StudentWoStepper.value=0
        StudentWoCount.text = "0"//comment here
        valueCount["studentWo"]! = 0
        
        
        valueLabel.text = "0"
        stepper.minimumValue = 0
        stepper.value=0
        valueCount["childCount"]! = 0
        
        ASB.value = 0
        ASBCount.text = "0"
        subFalse()
    }
    @IBOutlet weak var ASB: UIStepper!
    
    @IBOutlet weak var ASBCount: UILabel!
    
    @IBAction func ASBAction(_ sender: UIStepper) {
        valueCount["asb"]! = Int(sender.value)
        ASBCount.text = valueCount["asb"]!.description
    }
    
    
    // here
    @IBOutlet weak var StudentWoCount: UILabel!

    @IBOutlet weak var StudentWoStepper: UIStepper!
    
    @IBAction func StudentWoAction(_ sender: UIStepper) {
        valueCount["studentWo"]! = Int(sender.value)
        
        StudentWoCount.text = valueCount["studentWo"]!.description
        
        
    }
    //below is meant to reset current tally
    //also meant to show subtotal price before purchase
    @IBAction func next(_ sender: UILabel) {
        
        moneyTotal.text = StoredValues.TotMones.description
        tCC.text = StoredValues.totalChildCount.description
        functionDisplay.text = "0"
       subTrue()
        
    }

    @IBOutlet weak var tCC: UILabel!
    
    
    
    // this is for the all of the money added together
    @IBOutlet weak var moneyTotal: UILabel!
    
    //meant to cancel the price of subtotal
    @IBAction func Cancel(_ sender: UILabel) {
        functionDisplay.text = "0"
        StoredValues.TotMones = 0
        subTrue()
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }



    func subTrue()
{
    SubtotalOut.isHidden = false
    SubtotalOut.isEnabled = true
    
    CancelOut.isHidden = true
    CancelOut.isEnabled = false
    
    PurchaseOut.isHidden = true
    PurchaseOut.isEnabled = false
    
}

func subFalse()
{
    SubtotalOut.isHidden = true
    SubtotalOut.isEnabled = false
    
    CancelOut.isHidden = false
    CancelOut.isEnabled = true
    
    PurchaseOut.isHidden = false
    PurchaseOut.isEnabled = true
}
    
    @IBOutlet weak var SubtotalOut: UIButton!
    @IBOutlet weak var CancelOut: UIButton!
    @IBOutlet weak var PurchaseOut: UIButton!
    
    
    
}





