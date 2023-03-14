//
//  CafeteriaScreen.swift
//  0706012110013-MARCELL_JEREMY_WIRADINATA-AFL1
//
//  Created by MacBook Pro on 10/03/23.
//

import Foundation

func getMenuOf(theStore theStoreIndex:Int) -> [String: Int] {
    
    // Filtering the all the menus based on value
    let anotherCafeteriaMenu = THE_MENU.filter{ $0.value == THE_STORES[theStoreIndex] }
    
    // Extracting only the Keys, containing MenuItem and Price
    let justTheMenu = Array(anotherCafeteriaMenu.keys)
    
    // Flattening the Dictionaries
    let flattenedDictionary = justTheMenu
        .flatMap { $0 }
        .reduce( [String:Int]() ) { (dict, nextValue) in
            var dictionary: [String:Int] = [:]
            dictionary.updateValue(nextValue.1, forKey: nextValue.0)
            return dict.merging(dictionary, uniquingKeysWith: { (first, _) in first })
        }
    
    return flattenedDictionary
}



func CafeteriaScreen(cafeteriaIndex: Int){
    
    
    let theCafteriaMenu: [String] = Array(getMenuOf(theStore: cafeteriaIndex).keys)
    
    var cafeteriaChoice: String? = "blank"
        
    outerloop: while(true){
        
        print(
            """
            Hi, welcome back to \(THE_STORES[cafeteriaIndex])
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
        
        cafeteriaChoice = readLine()
        
        guard let cafeteriaChoice = cafeteriaChoice else {
            print("Invalid input, please try again ", terminator: " ")
            continue
        }
                
        if(cafeteriaChoice.isNumber){
            
            
            //
        } else if(cafeteriaChoice.bIsValidInput) {
            switch cafeteriaChoice.lowercased() {
                case "b":
                    break outerloop
                default: continue
            }
        }
        
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
