//
//  ShoppingCartScreen.swift
//  0706012110013-MARCELL_JEREMY_WIRADINATA-AFL1
//
//  Created by MacBook Pro on 10/03/23.
//

import Foundation

func ShoppingCartScreen(){
    
outerloop: while true {
        
    if(THE_SHOPPING_CART.isEmpty) {
        print("")
        print("")
        print("Your cart is Empty")
        break outerloop
    }

    let allStores = Array(Set(THE_SHOPPING_CART.values))
    print(allStores)
    
    break outerloop
    
//    for theStore in allStores {
//        print("Your Order from \(theStore)")
//        print("- 'Name of product' x'amount'")
//    }
    
//    let anotherCafeteriaMenu = THE_MENU.filter{ $0.value == THE_STORES[theStoreIndex] }

        
    // Able to list out the orders
    // - quantity
    // - store of origin
    
    // Option to pay
    // - Shows their dough
    // - was it successful
        
    }
}
