//
//  CheckoutScreen.swift
//  0706012110013-MARCELL_JEREMY_WIRADINATA-AFL1
//
//  Created by MacBook Pro on 15/03/23.
//

import Foundation


func CheckOutScreen(){
    

    
    let theFinal = calculateBill()
    
outerloop: while true {
    print("""
            Your total order: \(theFinal)
            Enter the amount of your money:
            Please enter your payment.
        """, terminator: " ")
    
    var theAmount = readLine()
    
    guard let amount = theAmount else {
        continue;
    }
    
    let nowNumber = Int(amount) ?? -1
    let isValid = nowNumber != -1
    
    if nowNumber < 0 {
        print("Please enter a valid amount.")
        print("")
        continue;
    }
    
    if nowNumber == 0 {
        print("Payment can't be zero")
        print("")
        continue
    }
    
    if !isValid {
        print("Please enter a valid amount.")
        print("")
        continue;
    }
    
    if isValid {
        
        if nowNumber >= theFinal {
            print("You pay \(nowNumber)")
            print("You're change is \(nowNumber - theFinal)")
            print("Enjoy your meals")
            print("Press [return] to go back to main screen:")
            var something = readLine()
                    
            break outerloop
            
        } else {
            print("not enough money")
            continue;
        }

    }
}




    
    
    
//    outerloop: while true {
    
        // Get the shopping cart contents & fetch the price from the THE_MENU
        // - Isolate each store
        // - Filter for each store
        // - retrieve price
        // - multiply it with the keys
        // Multiply and accumulate the final result
        // Display and handle inputs
        // Error handling:
        // - 0
        // - negative values
        
//        break outerloop
//
//    }
}

func calculateBill() -> Int {
    

    let theShoppingCart = flattenDictionaryKey(of: THE_SHOPPING_CART)
    let theStoreName = Array(THE_SHOPPING_CART.values)
    let theMenu = Array(THE_SHOPPING_CART.keys)
    
    var finalBill = 0
    
    for i in 0...theStoreName.count-1 {
        
        var theString = ""
        
        for (theWord, theAmount) in theMenu[i]{
            theString = theWord
        }
        
        finalBill += calculateSubTotal(of: theString, from: theStoreName[0])
    }
    
    return finalBill
//    print(theStores)
//    print(theMenuNames)
//    print(theStoreName)
    
        
    // Get all the foods and from which store
    // Create a loop for each food
    // it adds to the final dough to be printed

    print("You have no bill :)")
    return 0
}


func calculateSubTotal(of menuItem:String, from storeName:String) -> Int {
    
    let thePrice = retrievePrice(of: menuItem, from: storeName)
    let theQuantity = retrieveQuantity(of: menuItem, from: storeName)
    
    return thePrice * theQuantity
    
}

func retrievePrice(of menuItem:String, from storeName:String) -> Int {
    
    let theDict = filterAllStoresBy(Store: storeName)
    
    let flattenedDict = flattenDictionaryKey(of: theDict)
    
    return flattenedDict[menuItem] ?? 0
    
}

func retrieveQuantity(of menuItem:String, from storeName:String) -> Int {
    
    let theDict = filterShoppingCartBy(Store: storeName)
    
    let flattenedDict = flattenDictionaryKey(of: theDict)
    
    return flattenedDict[menuItem] ?? 0
    
}
