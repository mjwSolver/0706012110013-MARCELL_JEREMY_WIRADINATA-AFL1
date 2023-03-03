//
//  main.swift
//  0706012110013-MARCELL_JEREMY_WIRADINATA-AFL1
//
//  Created by MacBook Pro on 28/02/23.
//

import Foundation

var mainMenuChoice = ""

while(mainMenuChoice != "Q"){
    
    // Welcome to UC Cafeteria .... 
    printGreetingPage()
    
    mainMenuChoice = readLine()!
    while(!mainMenuChoice.isNumber && !mainMenuChoice.isValidInput ){
        print("Invalid input, please try again ", terminator: "")
        mainMenuChoice = readLine()!
    }
    
    
    if(mainMenuChoice.isNumber){
        let validOption = Int(mainMenuChoice) ?? -1 < 8
        if(validOption){
            // function to return the right action.
        } else {
            print("Option doesn not exist")
        }
        
    } else {
        
        switch mainMenuChoice.lowercased() {
        case "q" : print("for Quiting")
        case "s": print("for Shopping Cart")
        default: print("I don't know what to do with that input")
        }
        
    }
    
    // Error Handling
    // out of bounds -> this option does not exist
    // - Take the limit from the length of the array
    
    // Success Handling
    // in range, then execute one function, takes in as integer
    
}



