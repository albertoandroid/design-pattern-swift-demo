//
//  Article.swift
//  gggg
//
//  Created by Alberto Palomar Robledo on 16/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation

//Originagtor: Crea un objeto Memento conteniendo una fotografia de su estado internto.

struct Article {
    var id: Int
    var title: String
    var text: String
    
    func createMemento()-> ArticleMemento{
        let memento = ArticleMemento(id: id, title: title, text: text)
        return memento
    }
    
    mutating func restore(memento: ArticleMemento){
        self.id = memento.id
        self.title = memento.title
        self.text = memento.text
    }
}
