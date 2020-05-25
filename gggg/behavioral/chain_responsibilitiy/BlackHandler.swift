//
//  BlackHandler.swift
//  gggg
//
//  Created by Alberto Palomar Robledo on 16/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation

class BlackHandler: ApproveLoanHandler {
    
    private var next: ApproveLoanHandler?
    
    func setNext(handler: ApproveLoanHandler) {
        next = handler
    }
    
    func getNext() -> ApproveLoanHandler {
        return next!
    }
    
    func creditCardRequest(totalLoan: Int) {
        if(totalLoan > 50000){
            print("Esta solicitud de tarjeta de credito la maneja la clase Black")
        }else{
            next!.creditCardRequest(totalLoan: totalLoan)
        }
    }
    
}
