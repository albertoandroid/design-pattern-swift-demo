//
//  Car.swift
//  gggg
//
//  Created by Alberto Palomar Robledo on 17/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation
/*
ConcreteObserver-> Implementaciones concretas de los observadores
 */
class Car: Observer {
    
    func update(trafficLight: TrafficLight) {
        if(trafficLight.status as AnyObject === "CAR_RED" as AnyObject){
            print("Semaforo coche Rojo -> Coche NO puede pasar")
        }else{
            print("Semaforo coche Verde -> Coche SI puede pasar")
        }
    }
    
}
