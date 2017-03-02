//
//  Model.swift
//  testing stepper 1
//
//  Created by 2017andreworosco on 2/7/17.
//  Copyright © 2017 2017andreworosco. All rights reserved.
//

import Foundation
struct Values
{
    var TicketCost : [String:Double] = ["Child":5,"ASB":0]
    var Child = 0
    
    /*mutating func updateDict(Str:String, i:Double)  {
        TicketCost.updateValue(i, forKey: Str)
    }
    mutating func AddDict(Str:String, i:Double){
        //TicketCost
    }*/
    
    var TotMones : Double = 0
    var currentAmount : Double = 0
    var totalChildCount : Double = 0
}
//holds stepper count
var valueCount: [String:Int] = [
    "childCount":0,
    "studentWo":0,
    "asb": 0
    
    
]

// holds entire cost adding up
var totalHolders: [String: Double] = [
    "totalCost":0

]
