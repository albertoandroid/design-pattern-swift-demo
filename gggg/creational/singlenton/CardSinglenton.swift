//
//  CardSinglenton.swift
//  gggg
//
//  Created by Alberto Palomar Robledo on 15/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation

/*
 
 */

class CardSinglenton {

    /*
     Toda clase singlenton tiene su variable estatica shared
     que permite a los clientes acceder a la única instancia de
     dicho clase.
     */
    static var shared = CardSinglenton()
    
    /// The Singleton's initializer should always be private to prevent direct
    /// construction calls with the `new` operator.
    private init() {}
    
    func doSomething(){
        print("Haciendo trabajo duro")
    }
}
