//
//  CreditCardActivateCommand.swift
//  gggg
//
//  Created by Alberto Palomar Robledo on 16/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation
/*
 ConcreteCommand-> define el enlace entre un objeto "Receiver" y una acción.
 Implementea el metodo execuete.
 */
class CreditCardActivateCommand: Command {
    
    var creditCardReceiver: CreditCardReceiver
    
    init(creditCardReceiver: CreditCardReceiver) {
        self.creditCardReceiver = creditCardReceiver
    }
    
    func execute() {
        creditCardReceiver.sendPinNumberToCustomer()
        creditCardReceiver.activate()
        creditCardReceiver.sendSMSToCustomerActive()
    }
}
