//
//  Function.swift
//  testing stepper 1
//
//  Created by 2017andreworosco on 2/8/17.
//  Copyright © 2017 2017andreworosco. All rights reserved.
//

import Foundation
//
func calculatorreturn() -> Double
{
    let Counts = Counters()
    
return Calculator(One: Counts.ONE, Two: Counts.TWO, Oper: Counts.OPER) + Calculator(One: Counts.THREE, Two: Counts.FOUR, Oper: Counts.OPER) + Calculator(One: Counts.FIVE, Two: Counts.SIX, Oper: Counts.OPER)//, zero
}

//to constantly update and add on to over time to keep track of all (money) purchases added together
//var totalHold = Double(totalCost) + calculatorreturn()
var zero = 0
var zeroone = 0
var ADD: Character = "+"


func totalHold() -> Int
{
    //let holders = Holders()
    
    
    return Int(addCalculator(One: Double(zero), Two: Double(zeroone), Oper: ADD))
}
//
