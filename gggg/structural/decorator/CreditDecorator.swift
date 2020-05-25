//
//  CreditDecorator.swift
//  gggg
//
//  Created by Alberto Palomar Robledo on 22/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation
/*
 Decorator: Clase que contine una referencia al objeto component y
 tambien implemnbta la interfaz del componente.
 */
class CreditDecorator: CreditComponent {
    
    var decorated: CreditComponent
    
    init(decorated: CreditComponent) {
        self.decorated = decorated
    }
    
    func showCredit() {
        self.decorated.showCredit()
    }
    
    
}
