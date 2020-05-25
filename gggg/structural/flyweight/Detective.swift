//
//  Detective.swift
//  gggg
//
//  Created by Alberto Palomar Robledo on 23/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation
/*
 ConcreteFlyweight: Implementa la interfaz flaywaith y almacena los
 estados que se comporatnten en el caso de que los haya.
 */
class Detective: Enemy {
    
    let LIFE = 1000
    var weapon = ""
    
    func setWeapon(weapon: String) {
        self.weapon = weapon
        print("Weapon creada: \(weapon)" )
    }
    
    func lifePoints() {
        print("La vida de un teniente es: \(LIFE)" )
    }
    
}
