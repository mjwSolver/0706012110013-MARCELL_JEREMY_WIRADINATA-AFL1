//
//  CafeteriaScreen.swift
//  0706012110013-MARCELL_JEREMY_WIRADINATA-AFL1
//
//  Created by MacBook Pro on 10/03/23.
//

import Foundation

func CafeteriaScreen(cafeteriaIndex: Int){
    
    
    var theCafteriaMenu: Set<String> =
        STORE_AND_MENU[THE_STORES[cafeteriaIndex]] ?? ["No Data Found", "Please press Back", "and try again"]
    
    var cafeteriaChoice: String? = "blank"
    
    while(true){
        
        print(
            """
            Hi, welcome back to \(THE_STORES[cafeteriaIndex])!
            What would you like to order?
            """
        )
            
        printCafeteriaMenu(cafeteriaMenus: theCafteriaMenu)
        
        print(
            """
            -
            [B]ack to Main Menu
            Your menu choice?
            """, terminator: " "
        )
        
        print("You sure about this mate?")
        cafeteriaChoice = readLine()
        
        guard let cafeteriaChoice = cafeteriaChoice else {
            print("Invalid input, please try again ", terminator: " ")
            continue
        }
                
        if(cafeteriaChoice.isNumber){
            
            
        } else {
            break;
        }
        
        // get the name of the store
        // get the list of items
        // using dictionary to grab reference by named
        // store products of each store (using set)
        // print the food for each store
        
        // Error Handling inputs
        
        
    }
}

func printCafeteriaMenu(cafeteriaMenus: Set<String>){
    for (index, cafeteriaMenu) in cafeteriaMenus.enumerated() {
        print(
            "[\(index+1)] \(cafeteriaMenu) "
        )
    }
}
