//
//  GasolineOffer.swift
//  gggg
//
//  Created by Alberto Palomar Robledo on 18/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation
/*
 ConcreteVisisitable o Concrete Element-> Esta clase implmeneta la interfaz Visitable y definene la operación
 de aceptación.
 */class GassolineOffer: OffertElement {
    func accept(visitor: CreditCardVisitor) {
        visitor.gasolineOffer(gasolineOffer: self)
    }
    
    
}
