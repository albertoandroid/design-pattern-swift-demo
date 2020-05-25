//
//  GoldHandler.swift
//  gggg
//
//  Created by Alberto Palomar Robledo on 15/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation
/*
 HandlerConcreto: Si
 puede manejar la petición lo hace, sino puede la reeeniva a su sucesor.
 */
class GoldHandler: ApproveLoanHandler {
    
    private var next: ApproveLoanHandler?
    
    func setNext(handler: ApproveLoanHandler) {
        next = handler
    }
    
    func getNext() -> ApproveLoanHandler {
        return next!
    }
    
    func creditCardRequest(totalLoan: Int) {
        if(totalLoan <= 10000){
            print("Esta solicitud de tarjeta de credito la maneja la clase Gold")
        }else{
            next!.creditCardRequest(totalLoan: totalLoan)
        }
    }
    
}
