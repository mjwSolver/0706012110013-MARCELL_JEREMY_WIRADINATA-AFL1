//
//  CafeteriaScreen.swift
//  0706012110013-MARCELL_JEREMY_WIRADINATA-AFL1
//
//  Created by MacBook Pro on 10/03/23.
//

import Foundation

// For transfering data from Cafeteria to OrderScreen
//struct CafeteriaToOrder {
//    var foodName: String = ""
//    var foodPrice: Int = 0
//    var storeName: String = ""
//}

struct CafeteriaToOrder {
    var theMenuItem = MenuItem(id: -1, name: "Dummy", price: 100)
    var storeName: String = ""
}

class Cafeteria {
            
    var cafeteriaIndex = 0
    var currentStore = Store(name: "Blank", menuList: [MenuItem(id: -1, name: "Dummy", price: -1)])
    
    init() {}
    
    init(cafeteriaIndex: Int) {
        self.cafeteriaIndex = cafeteriaIndex
    }
    
    func getCurrentStore (){
        currentStore = THE_STORESS[cafeteriaIndex]
    }
    
}

extension Cafeteria: OnePrintScreen {
    func printScreen() {
        
        var theCafeteriaMenu = currentStore.menuList
        var cafeteriaChoice: String? = "blank"
        
    //    print(rawCafeteria["Donat Coklat"] ?? "I can't find it")
    //    print(theCafteriaMenu[0])
    //    print(rawCafeteria[theCafteriaMenu[0]] ?? "Odd")
            
        outerloop: while(true){
            
            print("\n")
            print(
                """
                Hi, welcome back to \(currentStore.name)
                What would you like to order?
                """
            )
                
            self.currentStore.printMenuList()
            
            print(
                """
                -
                [B]ack to Main Menu
                Your menu choice?
                """, terminator: " "
            )
            
            cafeteriaChoice = readLine()
            
            guard let cafeteriaChoice = cafeteriaChoice else {
                print("Invalid input, please try again ", terminator: " ")
                continue
            }
                    
            if(cafeteriaChoice.isNumber){
                
                let choiceAsNumber = Int(cafeteriaChoice) ?? -1
                let isNumberValid = choiceAsNumber < theCafeteriaMenu.count && choiceAsNumber >= 0

                if !isNumberValid {
                    print(" I don't know what to do with that")
                    continue
                }
                
                let theMenuItem = theCafeteriaMenu[choiceAsNumber-1]

                let ThePackage = CafeteriaToOrder(
                    theMenuItem: theMenuItem,
                    storeName: currentStore.name)
                
                let TheOrder = Order(ThePackage)
                
                TheOrder.printScreen()
                
//                OrderScreen(
//                    theMenuItemIs: theCafteriaMenu[choiceAsNumber-1],
//                    chargeAt: menuPrice,
//                    fromStore: currentStore
//                )
                
            } else if(cafeteriaChoice.bIsValidInput) {
                switch cafeteriaChoice {
                    case "b", "B":
                    print("\nLeaving the cafeteria\n")
                        break outerloop
                    default: continue
                }
            }
        }
        
        
    }
}

// ==================================
// Old Era
//func CafeteriaScreen(cafeteriaIndex: Int){
//
//
//    let rawCafeteria = getMenuOf(theStore: cafeteriaIndex)
//    let theCafteriaMenu: [String] = Array(rawCafeteria.keys)
//
//    let currentStore = THE_STORES[cafeteriaIndex]
//
//    var cafeteriaChoice: String? = "blank"
//
////    print(rawCafeteria["Donat Coklat"] ?? "I can't find it")
////    print(theCafteriaMenu[0])
////    print(rawCafeteria[theCafteriaMenu[0]] ?? "Odd")
//
//    outerloop: while(true){
//
//        print("\n")
//        print(
//            """
//            Hi, welcome back to \(currentStore)
//            What would you like to order?
//            """
//        )
//
//        printCafeteriaMenu(cafeteriaMenus: theCafteriaMenu)
//
//        print(
//            """
//            -
//            [B]ack to Main Menu
//            Your menu choice?
//            """, terminator: " "
//        )
//
//        cafeteriaChoice = readLine()
//
//        guard let cafeteriaChoice = cafeteriaChoice else {
//            print("Invalid input, please try again ", terminator: " ")
//            continue
//        }
//
//        if(cafeteriaChoice.isNumber){
//
//            let choiceAsNumber = Int(cafeteriaChoice) ?? -1
//            let isNumberValid = choiceAsNumber < theCafteriaMenu.count && choiceAsNumber != -1
//
//            if !isNumberValid {
//                print(" I don't know what to do with that")
//                continue
//            }
//
//            let price: Int? = rawCafeteria[theCafteriaMenu[choiceAsNumber-1]]
//
//            guard let menuPrice = price else {
//                print(" Internal Error occurred")
//                continue
//            }
//
//            OrderScreen(
//                theMenuItemIs: theCafteriaMenu[choiceAsNumber-1],
//                chargeAt: menuPrice,
//                fromStore: currentStore
//            )
//
//        } else if(cafeteriaChoice.bIsValidInput) {
//            switch cafeteriaChoice {
//                case "b", "B":
//                print("\nLeaving the cafeteria\n")
//                    break outerloop
//                default: continue
//            }
//        }
//
//        // get the name of the store
//        // get the list of items
//        // using dictionary to grab reference by named
//        // store products of each store (using set)
//        // print the food for each store
//        // Error Handling inputs
//
//    }
//}

//func printCafeteriaMenu(cafeteriaMenus: [String]){
//    for (index, cafeteriaMenu) in cafeteriaMenus.enumerated() {
//        print(
//            "[\(index+1)] \(cafeteriaMenu) "
//        )
//    }
//}


//func getMenuOf(theStore theStoreIndex:Int) -> [String: Int] {
//
//    // Filtering the all the menus based on value
//    let anotherCafeteriaMenu = THE_MENU.filter{ $0.value == THE_STORES[theStoreIndex] }
//
//    let flattenedDictionary = flattenDictionaryKey(of: anotherCafeteriaMenu)
//
//    return flattenedDictionary
//}
