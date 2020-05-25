//
//  GooglePayment.swift
//  gggg
//
//  Created by Alberto Palomar Robledo on 13/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//
//design pattern
//creational
import Foundation

//ConcreteProduct: Implementación de la interfaz.
class GooglePayment: Payment{
    func doPayment() {
        print("hACIENDO EL PAGO CON GOOGLE pAYMENT")
    }
}
