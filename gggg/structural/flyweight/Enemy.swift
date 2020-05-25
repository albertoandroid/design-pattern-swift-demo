//
//  Enemy.swift
//  gggg
//
//  Created by Alberto Palomar Robledo on 23/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation
/*
 Flyweight : Es una interaz a través de la cual los flyweighs pueden
 recibir y actuar sobre los estados no compartidos.
 */
protocol Enemy {
    func setWeapon(weapon: String)
    func lifePoints()
}
