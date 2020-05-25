//
//  PrototypeCard.swift
//  gggg
//
//  Created by Alberto Palomar Robledo on 15/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation

/*
 Swift como la mayoria de lenguaje de programación
 disponde soporte para la clonación, para ello tenemos que
 impelementar el protocolo NSCopyin y implementar el metodo
 copy del mismo
 */

class PrototypeCard: NSCopying {
    var cardNumber = 0
    var cardType = ""
    
    required init(cardNumber: Int = 0, cardType: String = "") {
        self.cardNumber = cardNumber
        self.cardType = cardType
    }
    
    func copy(with zone: NSZone? = nil) -> Any {
        let prototype = type(of: self).init()
        prototype.cardNumber = cardNumber
        prototype.cardType = cardType
        print("Los valores de la Clase PrototypeCard han sido clonados")
        return prototype
    }
    
    
}
