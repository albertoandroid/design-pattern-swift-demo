//
//  LowerStrategyTestFormatter.swift
//  gggg
//
//  Created by Alberto Palomar Robledo on 17/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation

class LowerStrategyTestFormatter: StrategyTextFormatter {
    func format(text: String) {
        print("Texto en Minusuclas: \(text.lowercased())" )
    }
    
    
}

