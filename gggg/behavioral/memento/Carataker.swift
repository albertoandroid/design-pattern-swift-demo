//
//  Carataker.swift
//  gggg
//
//  Created by Alberto Palomar Robledo on 16/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation
//Carataker: Es responsable de mantener a salvo a Memento.

class Carataker {
    
    private var estados = [ArticleMemento]()
    
    func addMemento(memento: ArticleMemento){
        estados.append(memento)
    }
    
    func getMemento(index: Int)->ArticleMemento{
        return estados[index]
    }
}
