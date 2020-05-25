//
//  CreditCardB.swift
//  gggg
//
//  Created by Alberto Palomar Robledo on 21/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation
//Abtractcion -> Define una interfaz abstrafta. Mantiene referencia a objeto Implementor.
class CreditCardB {
    let creditCard: CreditCardProtocol
    init(creditCard: CreditCardProtocol) {
        self.creditCard = creditCard
    }
    func makePayment(){}
}
