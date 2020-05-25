//
//  Colleague.swift
//  gggg
//
//  Created by Alberto Palomar Robledo on 16/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation
/*
Colleague: define el comportamiento que debe implementar cada objeto para
    poder comunicarse con el Mediador de una manera standard.
 */
class Colleague {
    
    let mediator: Mediator
    
    init(m: Mediator) {
        self.mediator = m
    }
    
    func send(message: String){}
    func messageReceived(message: String){}
}
