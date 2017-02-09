//
//  Calculator.swift
//  testing stepper 1
//
//  Created by 2017andreworosco on 2/8/17.
//  Copyright © 2017 2017andreworosco. All rights reserved.
//

import Foundation

//This holds the ticket values and the vars below outside the dictionary bring out the value
var Tickets: [String:Double] = [
    "child":5,
    "ASB": 0,
    "StudentWo":9,
]
var childCost = Tickets["child"]!
var ASBCost = Tickets["ASB"]!
var studentWoCost = Tickets["StudentWo"]!



// The calculator would allow for it deal with such a thing as percentages and be abe to do a bit more
func Calculator(One: Double, Two : Double, Oper : Character) -> Double
{
    var answer: Double = 0
    switch Oper{
    case Character("+"):
        answer = One + Two
        break
        
    case Character("-"):
        answer = One - Two
        break
        
    case Character("/"):
        answer = One / Two
        break
        
    case Character("*"):
        answer = One * Two
        break
        
    default :
        answer = 0
        break
        
    }
    return answer
}
class Counters{
var ONE: Double = childCost
var TWO: Double = Double(valueCount["childCount"]!)
var OPER : Character = "*"
var THREE: Double = studentWoCost
var FOUR: Double = Double(valueCount["studentWo"]!)
let zero = "0"}


//print(Calculator(One: ONE, Two: TWO, Oper:OPER), zero)
