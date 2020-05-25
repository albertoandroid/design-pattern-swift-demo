//
//  Operation.swift
//  gggg
//
//  Created by Alberto Palomar Robledo on 19/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation
/*Structural
 /// The Target defines el protoclo que sera usado por el codigo
 del cliente, en este caso la operación de suma que nos devuelva String cuando el codigo que tenemos lo hace en enteros.
 */
protocol OperationTarget {
    var getSum: String {get}
}
