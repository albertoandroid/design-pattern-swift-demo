//
//  ConcreteMediator.swift
//  gggg
//
//  Created by Alberto Palomar Robledo on 16/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation
//ConcreteMdiator: implementa la interfaz. Define como los objetos
//se comunican entre ellos, ademas los conoce y mantiene

class ConcreteMediator: Mediator {
    
    var user1: ConcreteCollegue1?
    var user2: ConcreteCollegue2?
    
    func setColleague1(colleague1: ConcreteCollegue1){
        user1 = colleague1
    }
    
    func setColleague2(colleague2: ConcreteCollegue2){
        user2 = colleague2
    }
    
    func send(message: String, colleague: Colleague) {
        if(colleague === user1){
            user2?.messageReceived(message: message)
        }else if(colleague === user2){
            user1?.messageReceived(message: message)
        }
    }
}
