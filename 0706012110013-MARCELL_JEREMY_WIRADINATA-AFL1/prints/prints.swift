//
//  prints.swift
//  0706012110013-MARCELL_JEREMY_WIRADINATA-AFL1
//
//  Created by MacBook Pro on 03/03/23.
//

import Foundation


// Welcome to UC Cafeteria
func printGreetingPage(){
    print("""
        Welcome to UC-Walk Cafeteria, please select a cafeteria:
        
        """)
    printStores()
    print("""
    -
    [S]hopping Cart
    [Q]uit
    Your cafeteria of choice?
    """
    )
}


fileprivate func printStores() {
    let theStores = ["Tuku-Tuku", "Xiangjia", "Raburi" ,"Gotri", "Madam Lie", "E&W Sandwich", "GI Joe", "Kopte"]
    
    for (index, store) in theStores.enumerated() {
        print("[\(index+1)] \(store)")
    }
}

