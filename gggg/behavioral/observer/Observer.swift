//
//  Observer.swift
//  gggg
//
//  Created by Alberto Palomar Robledo on 17/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation
/*
Observador-> Interfaz que define las oepraciones que se utilizarán para notificar al subject.
 */
protocol Observer {
    func update(trafficLight: TrafficLight)
}

