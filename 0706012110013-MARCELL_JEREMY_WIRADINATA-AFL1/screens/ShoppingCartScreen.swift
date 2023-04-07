//
//  ShoppingCartScreen.swift
//  0706012110013-MARCELL_JEREMY_WIRADINATA-AFL1
//
//  Created by MacBook Pro on 10/03/23.
//

import Foundation


class ShoppingCart {
    
    let TheCheckOut = CheckOut()
    var contents: [CartItem] = []
    
    init() {}
    
    func isSimilarItemInCartOf(id: Int) -> Bool{
        
        for theItems in contents {
            if theItems.id == id {
                return true
            } else { continue }
        }
        
        return false;
        
    }
    
    func retrieveItemInCart(id: Int) -> Int {
        
        if !isSimilarItemInCartOf(id: id) {
//            return CartItem(id: -1, name: "Blank", price: 0, quantity: 0)
            return -1
        }
        
        for (theIndex, theItems) in contents.enumerated() {
            if theItems.id == id {
                return theIndex
            } else { continue }
        }
            
//        return CartItem(id: -1, name: "Duplicate ID", price: 0, quantity: 0)
        return -1
        
    }
    
    func extractAllStoreNames() -> [String] {
        
        var AllTheStores: [String] = []
        
        for theItems in contents {
      
            if !AllTheStores.contains( theItems.storeName ) {
                AllTheStores.append( theItems.storeName )
            }
            
        }
        
        return AllTheStores
    }
    
}

extension ShoppingCart: OnePrintScreen {
    func printScreen() {
        
        if(contents.isEmpty) {
            print("")
            print("")
            print("Your cart is Empty")
            print("")
            return
        }
        
    outerloop: while true {
        
        let allStores = extractAllStoreNames()

        print("""
            \n
            =========
            YOUR BILL
            =========
            """)
        for theStore in allStores {
            let theCartsItems = contents.filter { $0.storeName == theStore }
            
            print("\nYour Order from \(theStore)")
            for cartItem in theCartsItems {
                print(" - \(cartItem.name) x \(cartItem.quantity) = \(cartItem.price * cartItem.quantity)")
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
                TheCheckOut.printScreen()
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
//func ShoppingCartScreen(){
//
//    let shoppingChoice = "blank"
//
//outerloop: while true {
//
//    if(THE_SHOPPING_CART.isEmpty) {
//        print("")
//        print("")
//        print("Your cart is Empty")
//        print("")
//        break outerloop
//    }
//
//    let allStores = Array(Set(THE_SHOPPING_CART.values))
////    print(allStores)
//
////    let theCartsItems = THE_SHOPPING_CART.filter { $0.value == "Tuku-Tuku" }
////    let theItems = flattenDictionary(of: theCartsItems)
////    print(theItems)
////
////    break;
//    for theStore in allStores {
//        let theCartsItems = THE_SHOPPING_CART.filter { $0.value == theStore }
//        let theItems = flattenDictionaryKey(of: theCartsItems)
//
//        print("Your Order from \(theStore)")
//        for (itemName, itemQuantity) in theItems {
//            print("- \(itemName) x \(itemQuantity)")
//        }
//
//    }
//    print("""
//        Press [B] to go back
//        Press [P] to pay / checkout
//        Your choice?
//        """, terminator: " ")
//
//    let shoppingChoice = readLine()
//
//    guard let shoppingDecision = shoppingChoice else {
//        print(" I don't know what to do with that input")
//        continue
//    }
//
//    if shoppingDecision.isNumber {
//        print(" Numbers are invalid inputs")
//        continue
//    }
//
//    if shoppingDecision.bpIsValidInput {
//        switch shoppingChoice {
//        case "p", "P":
//            CheckOutScreen()
//            break outerloop
//        case "b", "B":
//            break outerloop
//        default:
//            print(" Internal Error in Shopping Cart")
//            continue;
//        }
//    }
//
////  let anotherCafeteriaMenu = THE_MENU.filter{ $0.value == THE_STORES[theStoreIndex] }
//
//
//    // Able to list out the orders
//    // - quantity
//    // - store of origin
//
//    // Option to pay
//    // - Shows their dough
//    // - was it successful
//
//    }
//}
