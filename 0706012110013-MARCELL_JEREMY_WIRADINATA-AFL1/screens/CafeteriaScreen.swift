//
//  CafeteriaScreen.swift
//  0706012110013-MARCELL_JEREMY_WIRADINATA-AFL1
//
//  Created by MacBook Pro on 10/03/23.
//

import Foundation

func CafeteriaScreen(cafeteriaIndex: Int){
    var cafeteriaChoice = "blank"
    while(cafeteriaChoice != "BACK"){
        
        var theSet: Set<String> = STORE_AND_MENU[THE_STORES[cafeteriaIndex]] ?? ["Error"]
        
        print(
            """
            Hi, welcome back to Tuku-Tuku!
            What would you like to order?
            """
        )
            
        printCafeteriaMenu(cafeteriaMenus: theSet)
        
        print(
            """
            -
            [B]ack to Main Menu
            Your menu choice?
            
            """
        )
        
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
