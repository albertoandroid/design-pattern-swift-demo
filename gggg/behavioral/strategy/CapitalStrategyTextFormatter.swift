//
//  CapitalStrategyTextFormatter.swift
//  gggg
//
//  Created by Alberto Palomar Robledo on 17/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation
/*
Definimos una estrategia concreta llamada CapitalStrategyTextFormatter que encapsula nuestro algoritmo de comportamiento.
 En este caso nuestro algoritmo es recibir un string y pasarlo
 a mayusuclas
 */
class CapitalStrategyTextFormatter: StrategyTextFormatter {
    func format(text: String) {
        print("Texto en Mayusculas: \(text.uppercased())" )
    }
    
    
}
