//
//  Payment.swift
//  gggg
//
//  Created by Alberto Palomar Robledo on 18/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation
/*
La clase abtracta Payment contiene el método plantilla makePayment y la implmentación de pasos que
será igual para todos los tipos metodos de pago.
 Basicamente contiene el esqueleto del algoritmo y tenemos
 los metodos abstractaos que implementaran las clases concretas.

 */
protocol PaymentTemplate {
    func initialize()
    func startPayment()
    func endPayment()
    
    
}
extension PaymentTemplate{
    /*
    Este es el método plantilla.
     */
    func makePayment(){
        initialize()
        startPayment()
        endPayment()
    }
}
