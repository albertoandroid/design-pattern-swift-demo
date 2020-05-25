//
//  CreditMarker.swift
//  gggg
//
//  Created by Alberto Palomar Robledo on 23/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation
/*
la clase facade
 Facade: Básicamente se encarga de conocer que clases del subsistema
 son responsables de una petición.
 */
class CreditMarker{
    var black = BlackModule()
    var gold = GoldModule()
    var silver = SilverModule()
    
    func showCreditBlack(){
        black.showCredit()
    }
    
    func showCreditGold(){
        gold.showCredit()
    }
    
    func showCreditSilver(){
        silver.showCredit()
    }
}
