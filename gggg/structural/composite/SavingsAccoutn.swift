//
//  SavingsAccoutn.swift
//  gggg
//
//  Created by Alberto Palomar Robledo on 21/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation
/*
 Implemente el protocolo del componente base. Y no tienen
 ningun tipo de referencia a otros objetios leaf. 
 */
class SavingsAccount: AccountComponent {
    var accountBalance: Float = 0.0
    func showCardName() {
        print("Cuenta Ahorro")
    }
}
