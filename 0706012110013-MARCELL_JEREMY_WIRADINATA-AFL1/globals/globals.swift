//
//  globals.swift
//  0706012110013-MARCELL_JEREMY_WIRADINATA-AFL1
//
//  Created by MacBook Pro on 10/03/23.
//

import Foundation

// Shopping Cart

var shoppingCart: [[String : String]:Int] = [:]

// Stores and Menu

let THE_STORES: [String] = [
    "Tuku-Tuku", "XiangJia", "Raburi" ,"Gotri", "Madam Lie", "E&W Sandwich", "GI Joe", "Kopte"
]

var THE_SHOPPING_CART: [[String:Int] : String] = [:]

let THE_MENU: Dictionary<[String: Int], String> = [
    ["Tahu isi": 10000] : "Tuku-Tuku" ,
    ["Nasi kuning": 12000] : "Tuku-Tuku" ,
    ["Nasi campur": 12000] : "Tuku-Tuku" ,
    ["Air mineral": 2000] : "Tuku-Tuku" ,
    ["NU Green Tea Honey": 5000] : "Tuku-Tuku" ,
    ["Nissin Cup Noodle": 5000] : "Tuku-Tuku" ,
    ["Itoe Oolong Tea": 7000] : "Tuku-Tuku" ,
    ["Donat Coklat": 5000] : "Tuku-Tuku" ,
    
    ["Normal Coffee": 12000] : "Xiang Jia",
    ["Kaya Toast Ori": 12000] : "Xiang Jia",
    ["Waterfall Coffee": 10000] : "Xiang Jia",
    ["Raining Coffee": 20000] : "Xiang Jia",
    ["Floating Coffee": 15000] : "Xiang Jia",
    ["Green Noodles": 25000] : "Xiang Jia",
    ["Fish Noodles": 25000] : "Xiang Jia",
    ["Nasi Telur": 15000] : "Xiang Jia",
    
    ["Katsu Ramen": 32000] : "Raburi",
    ["Katsu Karaage": 30000] : "Raburi",
    ["Ramen Soya": 23000] : "Raburi",
    ["Ramen Seaweed": 29000] : "Raburi",
    ["Nasi Katsu": 27000] : "Raburi",
    ["Nasi Karaage": 26000] : "Raburi",
    ["Nasi Telur": 23000] : "Raburi",
    ["Nasi Beef Shortplate": 36000] : "Raburi",
    
    ["Nasi Goreng Pedas": 25000] :"Gotri",
    ["Nasi Lauk Gila": 20000] :"Gotri",
    ["Nasi Mie Instan": 15000] :"Gotri",
    ["Nasi Ekonomis": 10000] :"Gotri",
    ["Mie Goreng Kecap Asin": 22000] :"Gotri",
    ["Mie Ayam Jamur": 26000] :"Gotri",
    ["Mie Goreng Pangsit": 25000] :"Gotri",
    ["Mie Special": 30000] :"Gotri",
    
    ["Nasi Sayur Ayam": 25000] : "Madam Lie",
    ["Nasi Ayam Sayur": 20000] : "Madam Lie",
    ["Nasi Ayam Goreng": 15000] : "Madam Lie",
    ["Nasi Goreng Special": 10000] : "Madam Lie",
    ["Nasi Goreng + Telur": 22000] : "Madam Lie",
    ["Jus Oren": 26000] : "Madam Lie",
    ["Jus Melon": 25000] : "Madam Lie",
    ["Teh Manis": 30000] : "Madam Lie",
    
    ["American Cheese Steak": 32000] : "E&W Sandwich",
    ["Singaporean John Bread": 35000] : "E&W Sandwich",
    ["Roti Gak Jelas": 32000] : "E&W Sandwich",
    ["Spicy Tuna Mayo": 35000] : "E&W Sandwich",
    ["Spicy Thai Tom Yum Beef": 32000] : "E&W Sandwich",
    ["Cubano Classic": 35000] : "E&W Sandwich",
    ["German Curry Worst": 32000] : "E&W Sandwich",
    ["Vietnamese Grilled Chicken": 35000] : "E&W Sandwich",
    
    ["Donut Sprinkles": 12000] : "GI Joe",
    ["Coffee Biasa Aja": 10000] : "GI Joe",
    ["Americano": 22000] : "GI Joe",
    ["Deep Latte": 25000] : "GI Joe",
    ["Matcha Mix Tea": 19000] : "GI Joe",
    ["Puffy Cupcake": 14000] : "GI Joe",
    ["Coffee GI Special": 22000] : "GI Joe",
    ["Chocolate Donuts": 10000] : "GI Joe",
    
    ["Kopi Hitam": 8000] : "Kopte",
    ["Kopi Hitam Manis": 10000] : "Kopte",
    ["Kopi Teh Tarik": 13000] : "Kopte",
    ["Kopi Tarik Cincau": 13000] : "Kopte",
    ["Tarik Kopi Kopte": 12000] : "Kopte",
    ["Kopi Chocolate Tarik": 13000] : "Kopte",
    ["Teh Manis": 10000] : "Kopte",
    ["Teh Tawar": 8000] : "Kopte",
]


// what about the users shopping cart?
// stores the food
// stores the quantity
// stores the store orgin?
// mini brain - empty, but takes in:
// - Store Name
// Value is the object name and quantity
