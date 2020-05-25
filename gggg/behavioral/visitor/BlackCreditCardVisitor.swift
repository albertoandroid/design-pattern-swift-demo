//
//  BlackCreditCardVisitor.swift
//  gggg
//
//  Created by Alberto Palomar Robledo on 18/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation

class BlackCreditCardVisitor: CreditCardVisitor {
    func gasolineOffer(gasolineOffer: GassolineOffer) {
        print("Descuento 10% en Gasolina con su tarjeta Black")
    }
    
    func flightsOffer(flightOffer: FlightsOffer) {
        print("Descuento 25% en Gasolina con su tarjeta Black")
    }
    
    
}
