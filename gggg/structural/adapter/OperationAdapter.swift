//
//  OperationAdapter.swift
//  gggg
//
//  Created by Alberto Palomar Robledo on 19/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation
/*
 El adapter hacer que la interfaz que queremos adaptar en este
 caso nuestro operador adapte sea compatible con nuestro operación
 Target.
 */
class OperationAdapter: OperationTarget {
    
    let adaptee: OperationAdaptee
    
    init(adaptee: OperationAdaptee) {
        self.adaptee = adaptee
    }
    
    var getSum: String{
        return String(self.adaptee.sum())
    }
    
    
}
