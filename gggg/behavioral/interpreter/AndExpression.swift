//
//  AndExpression.swift
//  gggg
//
//  Created by Alberto Palomar Robledo on 16/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation
/*
 NonterminalExpresion: implmeenta una operación de interpretación asociada con los
 simbolos no terminales de la gramatica
 */
class AndExpression: Expression {
    
    var expression1: Expression
    var expression2: Expression
    
    init(expression1: Expression, expression2: Expression) {
        self.expression1 = expression1
        self.expression2 = expression2
    }
    
    /*
     Context: Contiene el contexgto para el interprete
     */
    func interpret(context: String) -> Bool {
        return expression1.interpret(context: context) && expression2.interpret(context: context)
    }
    
    
}
