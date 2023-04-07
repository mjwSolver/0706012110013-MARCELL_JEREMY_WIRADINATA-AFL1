//
//  MainScreen.swift
//  0706012110013-MARCELL_JEREMY_WIRADINATA-AFL1
//
//  Created by MacBook Pro on 10/03/23.
//

import Foundation

class MainMenu {
        
    func printGreetingPage(){
        print("")
        print("""
            🙌 Welcome to UC-Walk Cafeteria 👩‍🍳 👨‍🍳 🧑‍🍳, please select a cafeteria:
            
            """)
        storeUtility.printStores()
        print("""
        ---
        🛒 [S]hopping Cart
        ❌ [Q]uit
        Your cafeteria of choice❔
        """, terminator: " "
        )
    }
    
    init() {}
    
}

extension MainMenu: OnePrintScreen {
    func printScreen() {
        
        var mainMenuChoice: String? = ""
        outerloop: while true {
            
            // Welcome to UC Cafeteria ....
            self.printGreetingPage()
            
            mainMenuChoice = readLine()
            
            guard let mainMenuChoice = mainMenuChoice else {
                print("Invalid input, please try again ", terminator: " ")
                continue
            }
            
            if(mainMenuChoice.isNumber){
                
                let choiceAsNumber = Int(mainMenuChoice) ?? -1
                let validOption = choiceAsNumber < THE_STORES.count && choiceAsNumber != -1
                
                if(validOption){
                    TheCafeteria.cafeteriaIndex = choiceAsNumber - 1
                    TheCafeteria.getCurrentStore()
                    TheCafeteria.printScreen()
                } else if(choiceAsNumber == -1) {
                    print("An Error Occured - Conversion failed")
                } else {
                    print("Option does not exist")
                }
                
            } else {
                
                switch mainMenuChoice.lowercased() {
                case "q" : break outerloop
                case "s": TheShoppingCart.printScreen()
                default: print("\n I don't know what to do with that input \n")
                }
                
            }
            
        }
    }
}

// ==================================
// Old Era

//func MainMenuScreen(){
//
//    var mainMenuChoice: String? = ""
//    outerloop: while true {
//
//        // Welcome to UC Cafeteria ....
//        printGreetingPage()
//
//        mainMenuChoice = readLine()
//
//        guard let mainMenuChoice = mainMenuChoice else {
//            print("Invalid input, please try again ", terminator: " ")
//            continue
//        }
//
//        if(mainMenuChoice.isNumber){
//
//            let choiceAsNumber = Int(mainMenuChoice) ?? -1
//            let validOption = choiceAsNumber < THE_STORES.count && choiceAsNumber != -1
//
//            if(validOption){
//                CafeteriaScreen(cafeteriaIndex: choiceAsNumber - 1)
//            } else if(choiceAsNumber == -1) {
//                print("An Error Occured - Conversion failed")
//            } else {
//                print("Option does not exist")
//            }
//
//        } else {
//
//            switch mainMenuChoice.lowercased() {
//            case "q" : break outerloop
//            case "s": ShoppingCartScreen()
//            default: print("\n I don't know what to do with that input \n")
//            }
//
//        }
//
//        // Error Handling
//        // out of bounds -> this option does not exist
//        // - Take the limit from the length of the array
//
//        // Success Handling
//        // in range, then execute one function, takes in as integer
//
//    }
//}

// Welcome to UC Cafeteria
//fileprivate func printGreetingPage(){
//    print("")
//    print("""
//        🙌 Welcome to UC-Walk Cafeteria 👩‍🍳 👨‍🍳 🧑‍🍳, please select a cafeteria:
//
//        """)
//    printStores()
//    print("""
//    -
//    🛒 [S]hopping Cart
//    ❌ [Q]uit
//    Your cafeteria of choice❔
//    """, terminator: " "
//    )
//}


//fileprivate func printStores() {
//    let theStores = THE_STORES
//
//    for (index, store) in theStores.enumerated() {
//        print("[\(index+1)] \(store)")
//    }
//}

//fileprivate func printingStores(){
//    let theMenuValues = Array(THE_MENU.values)
//    let justTheStore = Set(theMenuValues)
//    print(justTheStore)
//}
