//
//  CreditCardReceiver.swift
//  gggg
//
//  Created by Alberto Palomar Robledo on 16/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation
/*
Esta clase desde el punto de vista del patrón comman es un receiver.
 Receiver: Sabe como llevar a cabo las operaciones asociadas a una petición.
 */
class CreditCardReceiver {
    func sendPinNumberToCustomer(){
        print("El Pin number ha sido enviado al Cliente")
    }
    
    func sendSMSToCustomerActive(){
        print("Enviado SMS al cliente informando que su Tarjeta ha sido activad, que se ponga en contacto si no la ha recibido")
    }
    
    func activate(){
        print("La tarjeta ha sido activada")
    }
    
    func desactivate(){
        print("La tarjeta ha sido activada")
    }
    
    func sendSMSToCustomerDesactivate(){
        print("Enviado SMS al cliente informando que su Tarjeta ha sido desactivada")
    }
}
