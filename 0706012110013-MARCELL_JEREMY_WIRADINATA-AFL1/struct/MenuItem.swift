//
//  MenuItem.swift
//  0706012110013-MARCELL_JEREMY_WIRADINATA-AFL1
//
//  Created by MacBook Pro on 05/04/23.
//

import Foundation

protocol Item {
    var id: Int {get}
    var name: String {get}
    var price: Int {get}
}

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

class CartItem: MenuItem {
    
    var quantity = 0
    var storeName = ""
    
    init(menuItem: MenuItem, quantity: Int, storeName: String){
        super.init(id: menuItem.id, name: menuItem.name, price: menuItem.price)
        self.quantity = quantity
    }
    
    init(id:Int, name:String, price: Int, quantity: Int, storeName: String){
        super.init(id: id, name: name, price: price)
        self.quantity = quantity
    }
    
    func IncrementQuantity(amount:Int){
        self.quantity += amount
    }
    
    func DecrementQuantity(amount:Int){
        
        if(self.quantity - amount < 0){
            self.quantity = 0
        } else {
            self.quantity -= amount
        }
        
    }
}
