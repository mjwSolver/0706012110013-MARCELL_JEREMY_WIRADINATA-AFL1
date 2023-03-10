//
//  globals.swift
//  0706012110013-MARCELL_JEREMY_WIRADINATA-AFL1
//
//  Created by MacBook Pro on 10/03/23.
//

import Foundation


let THE_STORES = [
    "Tuku-Tuku", "XiangJia", "Raburi" ,"Gotri", "Madam Lie", "E&W Sandwich", "GI Joe", "Kopte"
]

let STORE_AND_MENU: [String: Set<String>] = [
    "Tuku-Tuku" : TUKU_TUKU,
    "XiangJia" : XIANGJIA,
    "Raburi" : RABURI,
    "Gotri" : GOTRI,
    "Madam Lie" : MADAM_LIE,
    "E&W Sandwich" : EW_SANDWICH,
    "GI Joe" : GI_JOE,
    "Kopte" : KOPTE,
]

let TUKU_TUKU: Set<String> = [
    "Tahu isi", "Nasi kuning",  "Nasi campur",  "Air mineral",
    "NU Green Tea Honey", "Nissin Cup Noodle", "Itoe Oolong Tea", "Donat Coklat"
]

let XIANGJIA: Set = [
    "Normal Coffee", "Unusual Coffee", "Waterfall Coffee", "Raining Coffee",
    "Floating Coffee", "Green Noodles", "Yellow Noodles", "Blue Noodles"
]

let RABURI: Set = [
    "Ramen Nael", "Ramen Kevin", "Ramen Rama", "Ramen Seaweed",
    "Nasi Katsu", "Nasi Karaage", "Nasi Telur", "Nasi Something"
]

let GOTRI: Set<String> = [
    "Nasi Goreng Pedas", "Nasi Lauk Gila", "Nasi Mie Instan", "Nasi Ekonomis",
    "Mie Goreng Kecap Asin", "Mie Ayam Jamur", "Mie Goreng Pangsit", "Mie Special"
]

let MADAM_LIE: Set<String> = [
    "Nasi Sayur Ayam", "Nasi Ayam Sayur", "Nasi Ayam Goreng", "Nasi Goreng Special",
    "Nasi Goreng + Telur", "Jus Oren", "Jus Melon", "Teh Manis", "Teh Tawar"
]

let EW_SANDWICH: Set<String> = [
    "American Cheese Steak", "Singaporean John Bread", "Roti Gak Jelas", "Spicy Tuna Mayo",
    "Spicy Thai Tom Yum Beef", "Cubano Classic", "German Curry Worst", "Vietnamese Grilled Chicken"
]

let GI_JOE: Set<String> = [
    "Donut Sprinkles", "Coffee Biasa Aja", "Americano", "Deep Latte",
    "Matcha Mix Tea", "Puffy Cupcake", ""
]
let KOPTE: Set<String> = ["Food"]
