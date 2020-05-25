//
//  MobileAlertState.swift
//  gggg
//
//  Created by Alberto Palomar Robledo on 17/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation
//State: Define la interfaz para el comportamientoe asociado a un determinado
//estado del Contexto.
protocol MobileAlertState {
    
    func alert(context: MobileAlertStateContext)
}
