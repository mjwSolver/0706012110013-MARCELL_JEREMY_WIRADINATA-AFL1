//
//  utilities.swift
//  0706012110013-MARCELL_JEREMY_WIRADINATA-AFL1
//
//  Created by MacBook Pro on 15/03/23.
//

import Foundation


func flattenDictionaryKey(of theDict:[[String:Int] : String]) -> [String:Int] {
    
    // Extracting only the Keys, containing MenuItem and Price
    let theArray = Array(theDict.keys)
    
    // Flattening the Dictionaries
    let flattenedDictionary = theArray
        .flatMap { $0 }
        .reduce( [String:Int]() ) { (dict, nextValue) in
            var dictionary: [String:Int] = [:]
            dictionary.updateValue(nextValue.1, forKey: nextValue.0)
            return dict.merging(dictionary, uniquingKeysWith: { (first, _) in first })
        }
    
    return flattenedDictionary
}

func filterAllStoresBy(Store storeName:String) -> [[String:Int]:String] {
    return THE_MENU.filter{ $0.value == storeName}
}

func filterShoppingCartBy(Store storeName:String)->[[String:Int]:String] {
    return THE_SHOPPING_CART.filter{ $0.value == storeName }
}

//func convertToArray(from theDict:[String:Int]){
//    let one = Array(theDict.keys)
//    let two = Array(theDict.values)
//
//    one.append(two)
//    return one
//}
//
//func filterDictionaryBy(Store storeName:String, from theDict:[[String:Int]:String]) {
//    return theDict.filter{ $0.value == storeName }
//}

//func flattenDictionaryValues(of theDict:[[String:Int]:String]) -> [String:Int] {
//    
//    let theArray = Array(theDict.values)
//    
//    // Flattening the Dictionaries
//    let flattenedDictionary = theArray
//        .flatMap { $0 }
//        .reduce( [String:Int]() ) { (dict, nextValue) in
//            var dictionary: [String:Int] = [:]
//            dictionary.updateValue(nextValue.1, forKey: nextValue.0)
//            return dict.merging(dictionary, uniquingKeysWith: { (first, _) in first })
//        }
//    
//    return flattenedDictionary
//}

