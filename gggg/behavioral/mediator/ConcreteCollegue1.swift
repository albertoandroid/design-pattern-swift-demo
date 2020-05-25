//
//  ConcreteCollegue1.swift
//  gggg
//
//  Created by Alberto Palomar Robledo on 16/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//
/*
 ConcreteCollegaue: Cada objeto conoce su mediator, y lo usa para comunicarse
 con otros colegas.
 */
import Foundation

class ConcreteCollegue1: Colleague {
    
    override func send(message: String){
        mediator.send(message: message, colleague: self)
    }
    
    override func messageReceived(message: String){
        print("Collega 1 ha recibido el mensaje: \(message)")
    }
}
