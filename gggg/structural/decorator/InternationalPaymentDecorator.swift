//
//  InternationalPaymentDecorator.swift
//  gggg
//
//  Created by Alberto Palomar Robledo on 22/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation
/*
 Decorator Cocreto: Extiendo el decorador y crea una funcionalidad adicional
 sobre la clase componente.
 */
class InternationalPaymentDecorator: CreditDecorator {
    
    override init(decorated: CreditComponent) {
        super.init(decorated: decorated)
    }
    
    override func showCredit() {
        decorated.showCredit()
        configInternationalPayment()
    }
    
    func configInternationalPayment(){
        print("Tarjeta Configurada con pago Internacional")
    }
    
    
}
