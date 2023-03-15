//
//  OrderScreen.swift
//  0706012110013-MARCELL_JEREMY_WIRADINATA-AFL1
//
//  Created by MacBook Pro on 14/03/23.
//

import Foundation


func OrderScreen(theMenuItemIs foodName:String, chargeAt foodPrice:Int){
    
    var orderChoice: String? = "0"
    
outerloop: while true {
    
    print("")
    print(
        """
        \(foodName) @ \(foodPrice)
        - Press [B] to go back -
        How many \"\(foodName)\" would you like to order?
        """, terminator: " "
    )
    
    orderChoice = readLine()
    
    guard let orderChoice = orderChoice else {
        continue
    }
    
    if orderChoice.isNumber {
        
        print("Thank you for ordering!")
        print("")
        break outerloop
        // Logic to add to shopping cart
        
    } else if orderChoice.bIsValidInput {
        
        switch orderChoice {
            case "b": break outerloop
            default: print(" I don't know what to do with that input")
        }
        
    }
    

}
    
}
