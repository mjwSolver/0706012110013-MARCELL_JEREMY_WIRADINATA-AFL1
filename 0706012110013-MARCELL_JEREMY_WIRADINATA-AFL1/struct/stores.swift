//
//  stores.swift
//  0706012110013-MARCELL_JEREMY_WIRADINATA-AFL1
//
//  Created by MacBook Pro on 28/02/23.
//

import Foundation

class StoreUtility {
    
    func printStores() {
        let theStores = THE_STORES
        
        for (index, store) in theStores.enumerated() {
            print("[\(index+1)] \(store)")
        }
    }
    
    func printMenuOf(store theStore:Store){
        
        for (index, menuItem) in theStore.menuList.enumerated() {
            print("[\(index + 1)] \(menuItem.name)")
        }
        
    }
    
}

class Store {
    let name: String;
    let menuList: [MenuItem]
    
    init(name:String, menuList:[MenuItem]) {
        self.name = name
        self.menuList = menuList
    }
}
