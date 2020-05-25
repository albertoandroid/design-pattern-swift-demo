//
//  VisaCard.swift
//  gggg
//
//  Created by Alberto Palomar Robledo on 15/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation

/*
 La subsclase de prototype card tiene que sobreescribir el metodo
 copy de NSCOPYIN, para tener sus propios datos, pero tambien, debe
 llamar primero al metod copy de PrototypeCard
 */

class VisaCard: PrototypeCard {
    
    var cardName = "VISA"
    
    func copy() -> Any {
        return copy(with: nil)
    }
    
    override func copy(with zone: NSZone?) -> Any {
        guard let prototype = super.copy(with: zone) as? VisaCard else {
            return VisaCard() 
        }
        prototype.cardName = cardName
        print("Clonando Tarjeta Visa!")
        return prototype
    }
    
    
}
