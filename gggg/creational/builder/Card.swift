//
//  Card.swift
//  gggg
//
//  Created by Alberto Palomar Robledo on 15/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation
/*

Patron creaiconal builder
El patrón builder nos va a permitir crear objetos complejos a partir de un objeto fuente.
El objeto fuente se denomina producto y nos permite centralizar el proceso de creación en
un único punto.
Es decir que tenemos un único procemiento de creación de objetos complejos, de modo
que el mismo procedimiento nos permite crear representaciones distintas.
 */

class Card {
    private var cardType: String = ""
    private var number: String = ""
    private var expired: Int = 0
    
    func showCard() {
        print("Tarjeta \(cardType) . \(number) . \(expired)")
    }
    
    class CardBuilder {
        private var innerCard = Card()
        
        func cardType(cardType: String)-> CardBuilder {
            innerCard.cardType = cardType
            return self
        }
        
        func number(number: String)-> CardBuilder {
            innerCard.number = number
            return self
        }
        
        func expires(expires: Int)-> CardBuilder {
            innerCard.expired = expires
            return self
        }
        
        func build()-> Card {
            return innerCard
        }
    }
}
 
