//
//  MenuItem.swift
//  0706012110013-MARCELL_JEREMY_WIRADINATA-AFL1
//
//  Created by MacBook Pro on 05/04/23.
//

import Foundation

class MenuItem: Item {
    
    var id = 0
    var name = ""
    var price = 0
    
    init(id:Int, name:String, price:Int){
        self.id = id
        self.name = name
        self.price = price
    }
    
}
