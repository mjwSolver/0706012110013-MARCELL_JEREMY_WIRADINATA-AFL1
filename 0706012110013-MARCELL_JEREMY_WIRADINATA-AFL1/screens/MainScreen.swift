//
//  MainScreen.swift
//  0706012110013-MARCELL_JEREMY_WIRADINATA-AFL1
//
//  Created by MacBook Pro on 10/03/23.
//

import Foundation

func MainMenuScreen(){
    
    var mainMenuChoice = ""
    
    while(mainMenuChoice != "Q"){
        
        // Welcome to UC Cafeteria ....
        printGreetingPage()
        
        mainMenuChoice = readLine()!
        
        while(!mainMenuChoice.isNumber && !mainMenuChoice.isValidMenuInput ){
            print("Invalid input, please try again ", terminator: " ")
            mainMenuChoice = readLine()!
        }
        
        
        if(mainMenuChoice.isNumber){
            
            let choiceAsNumber = Int(mainMenuChoice) ?? -1
            let validOption = choiceAsNumber < 8 && choiceAsNumber != -1
            
            if(validOption){
                // function to return the right action.
            } else if(choiceAsNumber == -1) {
                print("An Error Occured - Conversion failed")
            } else {
                print("Option does not exist")
            }
            
        } else {
            
            switch mainMenuChoice.lowercased() {
            case "q" : mainMenuChoice = "Q"
            case "s": ShoppingCartScreen()
            default: print("\n I don't know what to do with that input \n")
            }
            
        }
        
        // Error Handling
        // out of bounds -> this option does not exist
        // - Take the limit from the length of the array
        
        // Success Handling
        // in range, then execute one function, takes in as integer
        
    }
}

// Welcome to UC Cafeteria
fileprivate func printGreetingPage(){
    print("""
        Welcome to UC-Walk Cafeteria, please select a cafeteria:
        
        """)
    printStores()
    print("""
    -
    [S]hopping Cart
    [Q]uit
    Your cafeteria of choice?
    """, terminator: " "
    )
}


fileprivate func printStores() {
    let theStores = THE_STORES
    
    for (index, store) in theStores.enumerated() {
        print("[\(index+1)] \(store)")
    }
}
