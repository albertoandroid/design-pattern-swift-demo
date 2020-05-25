//
//  TerminalExpression.swift
//  gggg
//
//  Created by Alberto Palomar Robledo on 16/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation
/*
Terminal Expression: Implemente una operación con los simbolos terminales de la gramatica
 */
class TerminalExpression: Expression {
    
    var text: String
    
    init(text: String) {
        self.text = text
    }
    
    func interpret(context: String) -> Bool {
        if(context.contains(text)){
            return true
        }else{
            return false
        }
    }
    
    
}
