//
//  MobileAlertStateContext.swift
//  gggg
//
//  Created by Alberto Palomar Robledo on 17/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation
//Context-> Mantinee una instancia del estado actual.
class MobileAlertStateContext {
    var currentState: MobileAlertState = Sound()
    
    func setState(state: MobileAlertState){
        currentState = state
    }
    
    func alert(){
        currentState.alert(context: self)
    }
    
    
}
