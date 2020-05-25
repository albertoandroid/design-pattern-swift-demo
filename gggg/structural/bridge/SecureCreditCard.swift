//
//  SecureCreditCard.swift
//  gggg
//
//  Created by Alberto Palomar Robledo on 21/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation
//ImplementadorConcretor: Implmenta la intefface de Implmentor.
class SecureCreditCard: CreditCardProtocol {
    func makePayment() {
        print("Pago realizado con Protocolo de Maxima Seguridad")
    }
}
