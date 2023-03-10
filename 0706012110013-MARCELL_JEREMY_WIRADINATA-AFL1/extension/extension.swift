//
//  extension.swift
//  0706012110013-MARCELL_JEREMY_WIRADINATA-AFL1
//
//  Created by MacBook Pro on 03/03/23.
//

import Foundation

extension String {
    var isNumber: Bool {
        let digitsCharacters = CharacterSet(charactersIn: "0123456789")
        return CharacterSet(charactersIn: self).isSubset(of: digitsCharacters)
    }
    var isValidMenuInput: Bool {
        let validInputs = CharacterSet(charactersIn: "QqSs")
        return CharacterSet(charactersIn: self).isSubset(of: validInputs)
    }
    var bIsValidInput: Bool {
        let validInputs = CharacterSet(charactersIn: "Bb")
        return CharacterSet(charactersIn: self).isSubset(of: validInputs)
    }
}
