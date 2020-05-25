//
//  ApproveLoanHandler.swift
//  gggg
//
//  Created by Alberto Palomar Robledo on 15/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation
/*
Handler: es la interfaza para manejar las peticiones.
 */
protocol ApproveLoanHandler {
    func setNext(handler: ApproveLoanHandler)
    func getNext()->ApproveLoanHandler
    func creditCardRequest(totalLoan: Int)
    
}
