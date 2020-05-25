//
//  Context.swift
//  gggg
//
//  Created by Alberto Palomar Robledo on 17/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation
/*
Definimos nuestra clase Context, donde se pasarán las estrategias,
es decir en nuestro caso según la estratigia escogida será
 pasarlo a mayusuclas o minusculas
 */
class Context {
    var strategyTextFormmater: StrategyTextFormatter
    init(strategyTextFormmater: StrategyTextFormatter) {
        self.strategyTextFormmater = strategyTextFormmater
    }
    
    func publishText(text: String){
        strategyTextFormmater.format(text: text)
    }
}
