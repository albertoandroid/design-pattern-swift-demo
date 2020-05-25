//
//  Sound.swift
//  gggg
//
//  Created by Alberto Palomar Robledo on 17/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//
//StateConcrete-> cada subsclase implemente el comportamientoe asociado con un estado
//del contexto.
import Foundation
class Sound: MobileAlertState {
    func alert(context: MobileAlertStateContext) {
        print("Estado Sonando...")
    }
}
