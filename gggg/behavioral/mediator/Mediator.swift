//
//  Mediator.swift
//  gggg
//
//  Created by Alberto Palomar Robledo on 16/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation
/*
El ejemplo tipico para aprender este patrón es desarrollar un chat
imaginemos que tenemos dos usuarios y queremos que se comuniquen entre si.
 */
//    Mediator: interfaz para comunicarse con los objetos.
protocol Mediator {
    func send(message: String, colleague: Colleague)
}
