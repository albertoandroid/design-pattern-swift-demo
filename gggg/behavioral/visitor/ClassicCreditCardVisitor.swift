//
//  ClassicCreditCardVisitor.swift
//  gggg
//
//  Created by Alberto Palomar Robledo on 18/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation
/*
 ConcreteVisitor -> para cada tipo de visistante debemos implementar todos
 los metodos de visita declarados en la Interfaz Visitor.
 Cada visitante es el repsonsable de las diferentes operaciones.
 */
class ClassicCreditCardVisitor: CreditCardVisitor{
    func gasolineOffer(gasolineOffer: GassolineOffer) {
        print("Descuento 3% en Gasolina con su tarjeta Clásica")
    }
    
    func flightsOffer(flightOffer: FlightsOffer) {
        print("Descuento 5% en Vuelos con su tarjeta Clásica")
    }
    
    
}
