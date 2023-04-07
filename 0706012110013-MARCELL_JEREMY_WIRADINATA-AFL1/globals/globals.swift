//
//  globals.swift
//  0706012110013-MARCELL_JEREMY_WIRADINATA-AFL1
//
//  Created by MacBook Pro on 10/03/23.
//

import Foundation


// Stores and Menu
let storeUtility = StoreUtility()

let THE_STORES: [String] = [
    "🔺 Tuku-Tuku", "㐯 Xiang Jia", "🇯🇵 Raburi" ,"🦚 Gotri", "💚 Madam Lie", "🥪 E&W Sandwich", "☕️ GI Joe", "☕️ Kopte"
]

// For loop to create the Stores at the beginning (imagine adding a new menu in the middle, new ID.)
let THE_STORESS: [Store] = [
    Store(name: "Tuku-Tuku", menuList: MENU_TUKUTUKU),
    Store(name: "Xiang Jia", menuList: MENU_XIANGJIA),
    Store(name: "Raburi", menuList: MENU_RABURI),
    Store(name: "Gotri", menuList: MENU_GOTRI),
    Store(name: "Madam Lie", menuList: MENU_MADAM_LIE),
    Store(name: "E&W Sandwich", menuList: MENU_EW),
    Store(name: "GI Joe", menuList: MENU_GIJOE),
    Store(name: "Kopte", menuList: MENU_KOPTE),
]

//var THE_SHOPPING_CARTT: [CartItem] = []

let MENU_TUKUTUKU = [
    MenuItem(id: 1, name: "Tahu isi", price: 10000),
    MenuItem(id: 2, name: "Nasi kuning", price: 12000),
    MenuItem(id: 3, name: "Nasi campur", price: 12000),
    MenuItem(id: 4, name: "Air mineral", price: 2000),
    MenuItem(id: 5, name: "NU Green Tea Honey", price: 5000),
    MenuItem(id: 6, name: "Nissin Cup Noodle", price: 5000),
    MenuItem(id: 7, name: "Itoe Oolong Tea", price: 7000),
    MenuItem(id: 8, name: "Donat Coklat", price: 5000),
]

let MENU_XIANGJIA = [
    MenuItem(id: 9, name: "Normal Coffee", price: 12000),
    MenuItem(id: 10, name: "Kaya Toast Ori", price: 12000),
    MenuItem(id: 11, name: "Waterfall Coffee", price: 10000),
    MenuItem(id: 12, name: "Raining Coffee", price: 20000),
    MenuItem(id: 13, name: "Floating Coffee", price: 15000),
    MenuItem(id: 14, name: "Green Noodles", price: 25000),
    MenuItem(id: 15, name: "Fish Noodles", price: 25000),
    MenuItem(id: 16, name: "Nasi Telur", price: 15000),
]

let MENU_RABURI = [
    MenuItem(id: 17, name: "Katsu Ramen", price: 32000),
    MenuItem(id: 18, name: "Katsu Karaage", price: 30000),
    MenuItem(id: 19, name: "Ramen Soya", price: 23000),
    MenuItem(id: 20, name: "Ramen Seaweed", price: 29000),
    MenuItem(id: 21, name: "Nasi Katsu", price: 27000),
    MenuItem(id: 22, name: "Nasi Karaage", price: 26000),
    MenuItem(id: 23, name: "Nasi Telur", price: 23000),
    MenuItem(id: 24, name: "Nasi Beef Shortplate", price: 36000),
]

let MENU_GOTRI = [
    MenuItem(id: 25, name: "Nasi Goreng Pedas", price: 25000),
    MenuItem(id: 26, name: "Nasi Lauk Gila", price: 20000),
    MenuItem(id: 27, name: "Nasi Mie Instan", price: 15000),
    MenuItem(id: 28, name: "Nasi Ekonomis", price: 10000),
    MenuItem(id: 29, name: "Mie Goreng Kecap Asin", price: 22000),
    MenuItem(id: 30, name: "Mie Ayam Jamur", price: 26000),
    MenuItem(id: 31, name: "Mie Goreng Pangsit", price: 25000),
    MenuItem(id: 32, name: "Mie Special", price: 30000),
]

let MENU_MADAM_LIE = [
    MenuItem(id: 33, name: "Nasi Sayur Ayam", price: 25000),
    MenuItem(id: 34, name: "Nasi Ayam Sayur", price: 20000),
    MenuItem(id: 35, name: "Nasi Ayam Goreng Pedas", price: 15000),
    MenuItem(id: 36, name: "Nasi Goreng Special", price: 10000),
    MenuItem(id: 37, name: "Nasi Goreng + Telur", price: 22000),
    MenuItem(id: 38, name: "Jus Oren", price: 26000),
    MenuItem(id: 39, name: "Jus Melon", price: 25000),
    MenuItem(id: 40, name: "Teh Manis", price: 30000)
]

let MENU_EW = [
    MenuItem(id: 41, name: "American Cheese Steak", price: 32000),
    MenuItem(id: 42, name: "Singaporean John Bread", price: 35000),
    MenuItem(id: 43, name: "Roti Gak Jelas", price: 32000),
    MenuItem(id: 44, name: "Spicy Tuna Mayo", price: 35000),
    MenuItem(id: 45, name: "Spicy Thai Tom Yum Beef", price: 32000),
    MenuItem(id: 46, name: "Cubano Classic", price: 35000),
    MenuItem(id: 47, name: "German Curry Worst", price: 32000),
    MenuItem(id: 48, name: "Vietnamese Grilled Chicken", price: 35000),
]

let MENU_GIJOE = [
    MenuItem(id: 49, name: "Donut Sprinkles", price: 12000),
    MenuItem(id: 50, name: "Coffee Biasa Aja", price: 10000),
    MenuItem(id: 51, name: "Americano", price: 22000),
    MenuItem(id: 52, name: "Deep Latte", price: 25000),
    MenuItem(id: 53, name: "Matcha Mix Tea", price: 19000),
    MenuItem(id: 54, name: "Puffy Cupcake", price: 14000),
    MenuItem(id: 55, name: "Coffee GI Special", price: 22000),
    MenuItem(id: 56, name: "Chocolate Donuts", price: 10000),
]

let MENU_KOPTE = [
    MenuItem(id: 57, name: "Kopi Hitam", price: 8000),
    MenuItem(id: 58, name: "Kopi Hitam Manis", price: 10000),
    MenuItem(id: 59, name: "Kopi Teh Tarik", price: 13000),
    MenuItem(id: 60, name: "Kopi Tarik Cincau", price: 13000),
    MenuItem(id: 61, name: "Tarik Kopi Kopte", price: 12000),
    MenuItem(id: 62, name: "Kopi Chocolate Tarik", price: 13000),
    MenuItem(id: 63, name: "Sweet Tea", price: 10000),
    MenuItem(id: 64, name: "Teh Tawar", price: 8000),
]

// ====================
// The Old Era

// Shopping Cart

//var shoppingCart: [[String : String]:Int] = [:]
//var THE_SHOPPING_CART: [[String:Int] : String] = [:]

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
    ["Nasi Ayam Goreng Pedas": 15000] : "Madam Lie",
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
    ["Sweet Tea": 10000] : "Kopte",
    ["Teh Tawar": 8000] : "Kopte",
]


// what about the users shopping cart?
// stores the food
// stores the quantity
// stores the store orgin?
// mini brain - empty, but takes in:
// - Store Name
// Value is the object name and quantity
