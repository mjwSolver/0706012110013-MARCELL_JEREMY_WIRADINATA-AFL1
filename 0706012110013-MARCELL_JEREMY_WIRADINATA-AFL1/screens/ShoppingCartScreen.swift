//
//  ShoppingCartScreen.swift
//  0706012110013-MARCELL_JEREMY_WIRADINATA-AFL1
//
//  Created by MacBook Pro on 10/03/23.
//

import Foundation


class ShoppingCart {
    
    init() {}
    
}

extension ShoppingCart: OnePrintScreen {
    func printScreen() {
        let shoppingChoice = "blank"
        
    outerloop: while true {
            
        if(THE_SHOPPING_CART.isEmpty) {
            print("")
            print("")
            print("Your cart is Empty")
            print("")
            break outerloop
        }

        let allStores = Array(Set(THE_SHOPPING_CART.values))

        for theStore in allStores {
            let theCartsItems = THE_SHOPPING_CART.filter { $0.value == theStore }
            let theItems = flattenDictionaryKey(of: theCartsItems)

            print("Your Order from \(theStore)")
            for (itemName, itemQuantity) in theItems {
                print("- \(itemName) x \(itemQuantity)")
            }

        }
        print("""
            Press [B] to go back
            Press [P] to pay / checkout
            Your choice?
            """, terminator: " ")
        
        let shoppingChoice = readLine()
        
        guard let shoppingDecision = shoppingChoice else {
            print(" I don't know what to do with that input")
            continue
        }
        
        if shoppingDecision.isNumber {
            print(" Numbers are invalid inputs")
            continue
        }
        
        if shoppingDecision.bpIsValidInput {
            switch shoppingChoice {
            case "p", "P":
                CheckOutScreen()
                break outerloop
            case "b", "B":
                break outerloop
            default:
                print(" Internal Error in Shopping Cart")
                continue;
            }
        }
        
        }
    }
}


// ==================================
// Old Era
func ShoppingCartScreen(){
    
    let shoppingChoice = "blank"
    
outerloop: while true {
        
    if(THE_SHOPPING_CART.isEmpty) {
        print("")
        print("")
        print("Your cart is Empty")
        print("")
        break outerloop
    }

    let allStores = Array(Set(THE_SHOPPING_CART.values))
//    print(allStores)

//    let theCartsItems = THE_SHOPPING_CART.filter { $0.value == "Tuku-Tuku" }
//    let theItems = flattenDictionary(of: theCartsItems)
//    print(theItems)
//
//    break;
    for theStore in allStores {
        let theCartsItems = THE_SHOPPING_CART.filter { $0.value == theStore }
        let theItems = flattenDictionaryKey(of: theCartsItems)

        print("Your Order from \(theStore)")
        for (itemName, itemQuantity) in theItems {
            print("- \(itemName) x \(itemQuantity)")
        }

    }
    print("""
        Press [B] to go back
        Press [P] to pay / checkout
        Your choice?
        """, terminator: " ")
    
    let shoppingChoice = readLine()
    
    guard let shoppingDecision = shoppingChoice else {
        print(" I don't know what to do with that input")
        continue
    }
    
    if shoppingDecision.isNumber {
        print(" Numbers are invalid inputs")
        continue
    }
    
    if shoppingDecision.bpIsValidInput {
        switch shoppingChoice {
        case "p", "P":
            CheckOutScreen()
            break outerloop
        case "b", "B":
            break outerloop
        default:
            print(" Internal Error in Shopping Cart")
            continue;
        }
    }
    
//  let anotherCafeteriaMenu = THE_MENU.filter{ $0.value == THE_STORES[theStoreIndex] }

        
    // Able to list out the orders
    // - quantity
    // - store of origin
    
    // Option to pay
    // - Shows their dough
    // - was it successful
        
    }
}
