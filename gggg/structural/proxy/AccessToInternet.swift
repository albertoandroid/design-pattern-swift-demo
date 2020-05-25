//
//  AccessToInternet.swift
//  gggg
//
//  Created by Alberto Palomar Robledo on 23/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation
/*
 RealSubject: Es una clase que implemente Subject y es una implementación
 concreta que debe ocultarse detrás de un proxy.
 */
class AccessToInternet: Internet {
    func connectTo(url: String) {
        print("Conectando a: \(url)");
    }
    
    
}
