//
//  OfferVisitable.swift
//  gggg
//
//  Created by Alberto Palomar Robledo on 18/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation
/*
 Visitable o Element: Es la interfaz que declara la operación de aceptación.
 Es decir es el punto de entrada que permite a un objeto ser "visitado" por el
 objeto Visitor.
 */

protocol OffertElement {
    func accept(visitor: CreditCardVisitor)
}

