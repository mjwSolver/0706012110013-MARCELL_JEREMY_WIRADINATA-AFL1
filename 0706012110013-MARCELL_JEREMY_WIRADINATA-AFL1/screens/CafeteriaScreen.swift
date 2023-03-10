//
//  CafeteriaScreen.swift
//  0706012110013-MARCELL_JEREMY_WIRADINATA-AFL1
//
//  Created by MacBook Pro on 10/03/23.
//

import Foundation

func CafeteriaScreen(cafeteria: Int){
    var cafeteriaChoice = "blank"
    while(cafeteriaChoice != "BACK"){
        
        print(
            """
            Hi, welcome back to Tuku-Tuku!
            What would you like to order?
            """
        )
            
        printCafeteriaMenu(cafeteriaMenus: ["Something 1", "Something 2", "Something 3", "Something 4"])
        
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

func printCafeteriaMenu(cafeteriaMenus: [String]){
    for (index, cafeteriaMenu) in cafeteriaMenus.enumerated() {
        print(
            "[\(index+1)] \(cafeteriaMenu) "
        )
    }
}
