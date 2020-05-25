//
//  MessagePublisher.swift
//  gggg
//
//  Created by Alberto Palomar Robledo on 17/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation
/*
 ConcreteSubject -> Clase concrtea de Subject. Mantiente el estado del objeto y cuando
 se producte un cambio de en el estado, notifica a los observadores adjuntos.
 */
class MessagePublisher: Subject {
    
    var observers = [Observer]()
    func attch(o: Observer) {
        observers.append(o)
    }
    
    func detach(o: Observer) {
        if let idx = observers.firstIndex(where: { $0 as AnyObject === o as AnyObject }) {
            observers.remove(at: idx)
            print("Subject: Detached an observer.\n")
        }
        
        
    }
    
    func notifyUpdate(trafficLight: TrafficLight) {
        observers.forEach({ $0.update(trafficLight: trafficLight)})
    }
    
    
}
