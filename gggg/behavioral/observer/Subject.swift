//
//  Subject.swift
//  gggg
//
//  Created by Alberto Palomar Robledo on 17/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation
/*
 Subject-> Interfaz que define las operaciones para adjuntar y anular la vinculación de los
 observadores al Subject.
 */
protocol Subject {
    func attch(o: Observer)
    func detach(o: Observer)
    func notifyUpdate(trafficLight: TrafficLight)
}
