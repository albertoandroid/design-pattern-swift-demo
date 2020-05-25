//
//  Card.swift
//  gggg
//
//  Created by Alberto Palomar Robledo on 16/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

/*
 Podamos acceder a los elementos de una colección sin exponer la exturcutura interna de los
 elementos o la colección en si.
 Iterador nos permite multiples recorridos simultanesos de una colección de principio a fin
 hacia atrás o ambas direccións.
 */
import Foundation

class CreditCard {
    var type: String
    
    init(type: String) {
        self.type = type
    }
}
