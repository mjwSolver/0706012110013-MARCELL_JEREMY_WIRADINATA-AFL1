//
//  main.swift
//  0706012110013-MARCELL_JEREMY_WIRADINATA-AFL1
//
//  Created by MacBook Pro on 28/02/23.
//

import Foundation

func MainMenuScreen(){
    
}

var mainMenuChoice = ""

while(mainMenuChoice != "Q"){
    
    // Welcome to UC Cafeteria .... 
    printGreetingPage()
    
    mainMenuChoice = readLine()!
    
    while(!mainMenuChoice.isNumber && !mainMenuChoice.isValidInput ){
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
            print("Option doesn not exist")
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

func ShoppingCartScreen(){
    var shopingChoice = "blank"
    while(shopingChoice != "BACK"){
        
        print("Hey There")
        shopingChoice = "BACK"
    }
}




