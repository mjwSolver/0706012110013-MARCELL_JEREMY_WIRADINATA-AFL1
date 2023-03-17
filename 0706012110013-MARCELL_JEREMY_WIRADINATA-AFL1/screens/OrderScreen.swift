//
//  OrderScreen.swift
//  0706012110013-MARCELL_JEREMY_WIRADINATA-AFL1
//
//  Created by MacBook Pro on 14/03/23.
//

import Foundation


func OrderScreen(theMenuItemIs foodName:String, chargeAt foodPrice:Int, fromStore storeName:String){
    
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
        
        guard let amountOrdered = orderChoice else {
            print(" Invalid Input")
            continue
        }
        
        if amountOrdered.isNumber {
            
            let choiceAsNumber = Int(amountOrdered) ?? -1
            let isValidChoice = choiceAsNumber != -1
            
            if (!isValidChoice) {
                print(" Internal Conversion Error")
                continue
            }
            
            print("Thank you for ordering!")
            print("")
            
            
            let theShoppingCart = flattenDictionaryKey(of: THE_SHOPPING_CART)
            let itemNames = Array(theShoppingCart.keys)
    
//            print("starting")
//            print(THE_SHOPPING_CART as AnyObject)
            
            var previousAmount: Int = 0
            if(itemNames.contains(foodName)){
                // Condition guarantees the existence of this value
                previousAmount = theShoppingCart[foodName]!
                
                THE_SHOPPING_CART.removeValue(forKey: [foodName:previousAmount])
//                print("before")
//                print(THE_SHOPPING_CART as AnyObject)
                
            }

            THE_SHOPPING_CART[[foodName:choiceAsNumber + previousAmount]] = storeName
//            print("after")
//            print(THE_SHOPPING_CART as AnyObject)
            
            break outerloop
            // Logic to check if the entry exists
            // - if true then increment the value by the amount ordered
            
        } else if amountOrdered.bIsValidInput {
            
            switch amountOrdered {
                case "b": break outerloop
                default: print(" I don't know what to do with that input")
            }
            
        }
        

    }
    
}
