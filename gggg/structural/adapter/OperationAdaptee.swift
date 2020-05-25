//
//  OperationAdaptee.swift
//  gggg
//
//  Created by Alberto Palomar Robledo on 19/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation
/*
 La clase adaptada tiene un comportamiento que es util, pero
 su interfaz es imcompatible con el codigo del cliente.
 Así que necesita una adaptaqción antes de ser usada por el cliente.
 */
class OperationAdaptee {
    
    var a: Int
    var b: Int
    
    init(a: Int, b: Int) {
        self.a = a
        self.b = b
    }
    
    func sum()->Int{
        return a + b
    }
}
