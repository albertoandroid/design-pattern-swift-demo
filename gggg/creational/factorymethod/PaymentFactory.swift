//
//  PaymentFactory.swift
//  gggg
//
//  Created by Alberto Palomar Robledo on 14/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation
/*
Creator: Es donde se declara el método de fabricación (Factory Method) que devuelve un objeto
de tipo Producto.
 */
class PaymentFactory{
    static func buildPayment(typePayment: TypePayment)->Payment{
        switch typePayment {
            case .GOOGLE:
                return GooglePayment()
            case .CARD:
                return CardPayment()
        }
    }
}
