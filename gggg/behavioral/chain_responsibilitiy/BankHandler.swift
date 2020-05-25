//
//  BankHandler.swift
//  gggg
//
//  Created by Alberto Palomar Robledo on 15/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation
/*
Cliente: Inicia la petición. Conoce a un gestor que es el que lanaza la petición a la cadena
hasta que alguien la procesa.
 */
class BankHandler: ApproveLoanHandler {
    
    private var next: ApproveLoanHandler?
    
    func setNext(handler: ApproveLoanHandler) {
        next = handler
    }
    
    func getNext() -> ApproveLoanHandler {
        return next!
    }
    
    func creditCardRequest(totalLoan: Int) {
        //Configurarmos la Chain of Responsability
        let gold = GoldHandler()
        self.setNext(handler: gold)
        
        let platinium = PlatiniumHandler()
        gold.setNext(handler: platinium)
        
        let black = BlackHandler()
        platinium.setNext(handler: black)
        
        next?.creditCardRequest(totalLoan: totalLoan)
    }

    
    
    
    
}
