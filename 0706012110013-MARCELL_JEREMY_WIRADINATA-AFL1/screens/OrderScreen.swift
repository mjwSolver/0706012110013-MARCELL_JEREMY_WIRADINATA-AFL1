//
//  OrderScreen.swift
//  0706012110013-MARCELL_JEREMY_WIRADINATA-AFL1
//
//  Created by MacBook Pro on 14/03/23.
//

import Foundation

class Order {
    
    var theMenuItem = MenuItem(id: -1, name: "Dummy", price: 100)
    var storeName: String = ""
    
    init(){}
    
    init(theMenuItem :MenuItem, storeName:String){
        self.theMenuItem = theMenuItem
        self.storeName = storeName
    }
    
    init(_ thePackage :CafeteriaToOrder){
        self.theMenuItem = thePackage.theMenuItem
        self.storeName = thePackage.storeName
    }
    
}

extension Order : OnePrintScreen {
    func printScreen() {
        
        var orderChoice: String? = "0"
        
        outerloop: while true {
            
            print("")
            print(
                """
                \(theMenuItem.name) @ \(theMenuItem.price)
                - Press [B] to go back -
                How many \"\(theMenuItem.name)\" would you like to order?
                """, terminator: " "
            )
            
            orderChoice = readLine()
            
            guard let amountOrdered = orderChoice else {
                print(" Invalid Input")
                continue
            }
            
            if amountOrdered.isNumber {
                
                let amountAsNumber = Int(amountOrdered) ?? -1
                let isValidChoice = amountAsNumber > 0
                
                if (!isValidChoice) {
                    print(" Internal Conversion Error")
                    continue
                }
                
                print("Thank you for ordering!")
                print("")
                
                
                // Do we store everything then we aggregate everything later at checkout?
//                var theCartItem = CartItem(menuItem: theMenuItem, quantity: amountAsNumber)
//                TheShoppingCart.contents.append(theCartItem)

                // Do we find a similar Item and then increment it's quantity?
                let theCartItem = CartItem(
                    menuItem: theMenuItem,
                    quantity: amountAsNumber,
                    storeName: storeName)
                
                if !TheShoppingCart.isSimilarItemInCartOf(id: theMenuItem.id) {
                    TheShoppingCart.contents.append(theCartItem)
                    break outerloop
                }
                
                let similarItemIndex = TheShoppingCart.retrieveItemInCart(id: theMenuItem.id)
                if similarItemIndex == -1 {
                    print(" No Similar Item found, duplicate ID?")
                    break outerloop
                }
                
                TheShoppingCart.contents[similarItemIndex].IncrementQuantity(amount: theCartItem.quantity)
                                
                break outerloop
                
            } else if amountOrdered.bIsValidInput {
                
                switch amountOrdered {
                    case "b": break outerloop
                    default: print(" I don't know what to do with that input")
                }
                
            }
            

        }
    }
}

// ==================================
// Old Era
//func OrderScreen(theMenuItemIs foodName:String, chargeAt foodPrice:Int, fromStore storeName:String){
//
//    var orderChoice: String? = "0"
//
//    outerloop: while true {
//
//        print("")
//        print(
//            """
//            \(foodName) @ \(foodPrice)
//            - Press [B] to go back -
//            How many \"\(foodName)\" would you like to order?
//            """, terminator: " "
//        )
//
//        orderChoice = readLine()
//
//        guard let amountOrdered = orderChoice else {
//            print(" Invalid Input")
//            continue
//        }
//
//        if amountOrdered.isNumber {
//
//            let choiceAsNumber = Int(amountOrdered) ?? -1
//            let isValidChoice = choiceAsNumber != -1
//
//            if (!isValidChoice) {
//                print(" Internal Conversion Error")
//                continue
//            }
//
//            print("Thank you for ordering!")
//            print("")
//
//
//            let theShoppingCart = flattenDictionaryKey(of: THE_SHOPPING_CART)
//            let itemNames = Array(theShoppingCart.keys)
//
//            var previousAmount: Int = 0
//            if(itemNames.contains(foodName)){
//                // Condition guarantees the existence of this value
//                previousAmount = theShoppingCart[foodName]!
//
//                THE_SHOPPING_CART.removeValue(forKey: [foodName:previousAmount])
////                print("before")
////                print(THE_SHOPPING_CART as AnyObject)
//
//            }
//
//            THE_SHOPPING_CART[[foodName:choiceAsNumber + previousAmount]] = storeName
////            print("after")
////            print(THE_SHOPPING_CART as AnyObject)
//
//            break outerloop
//            // Logic to check if the entry exists
//            // - if true then increment the value by the amount ordered
//
//        } else if amountOrdered.bIsValidInput {
//
//            switch amountOrdered {
//                case "b": break outerloop
//                default: print(" I don't know what to do with that input")
//            }
//
//        }
//
//
//    }
//
//}
