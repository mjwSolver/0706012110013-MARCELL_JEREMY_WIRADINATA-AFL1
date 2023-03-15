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
            
            
            let theShoppingCart = flattenDictionary(of: THE_SHOPPING_CART)
            let itemNames = Array(theShoppingCart.keys)
    
            var previousAmount: Int = 0
            if(itemNames.contains(foodName)){
                // Condition guarantees the existence of this value
                previousAmount = theShoppingCart[foodName]!
            }
            
            THE_SHOPPING_CART[[foodName:choiceAsNumber + previousAmount]] = storeName
            
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

func flattenDictionary(of theDict:[[String:Int] : String]) -> [String:Int] {
    
    let theArray = Array(theDict.keys)
    
    let flattenedDictionary = theArray
        .flatMap { $0 }
        .reduce( [String:Int]() ) { (dict, nextValue) in
            var dictionary: [String:Int] = [:]
            dictionary.updateValue(nextValue.1, forKey: nextValue.0)
            return dict.merging(dictionary, uniquingKeysWith: { (first, _) in first })
        }
    
    return flattenedDictionary
}

