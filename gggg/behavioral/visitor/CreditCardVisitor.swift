//
//  Visitor.swift
//  gggg
//
//  Created by Alberto Palomar Robledo on 18/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation
/*
 Visitor -> Es una interfaz que vamos a utilizar para declarar las operaciones
 de visita para todos los tipos de clases visitables.
 */
protocol CreditCardVisitor {
    //luego creamos esto
    func gasolineOffer(gasolineOffer: GassolineOffer)
    
    func flightsOffer(flightOffer: FlightsOffer)
}
