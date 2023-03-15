//
//  utilities.swift
//  0706012110013-MARCELL_JEREMY_WIRADINATA-AFL1
//
//  Created by MacBook Pro on 15/03/23.
//

import Foundation


func flattenDictionary(of theDict:[[String:Int] : String]) -> [String:Int] {
    
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
