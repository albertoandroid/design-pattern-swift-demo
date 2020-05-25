//
//  Expression.swift
//  gggg
//
//  Created by Alberto Palomar Robledo on 16/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

//Abstract Expresion: declara la interfaz para la ejecución de una operación
import Foundation
protocol Expression {
    func interpret(context: String)->Bool
}
