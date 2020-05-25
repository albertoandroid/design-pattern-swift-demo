//
//  EnemyFactory.swift
//  gggg
//
//  Created by Alberto Palomar Robledo on 23/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//
/*
 Flayweith factory: Será nuestro factory, es decir para crear y
 gestionar los objetos flywieht.
 Es el encargado cuando el cliente solicita un flywete de crearlo o
 prporcionar una instancia si ya fue creado con anterioridad
 
 Clase que usamos para obtner un enemigo usando HshMap.
 Que nos devuelve un enemigo si un enemigo de ese tipo ya existe.
 Sino existe lo crea.
 */
import Foundation
class EnemyFactory {
    /*
    almacena la referencia de los objetos enemgios.
    Es decir tanto de soldado como de teniente.
     */
    private var enemies = [String: Enemy]()
    
    func getEnemy(type: String)-> Enemy{
        var enemy: Enemy
        //Si el enemigo ya ha sido creado se lo asignamos.
        if(enemies[type] != nil){
            enemy = enemies[type]!
        } else {
            switch type {
            case "Private":
                print("Soldado Creado")
                enemy = Private()
            case "Detective":
                print("Detective Creado")
                enemy = Detective()
            default:
                enemy = Detective()
            }
            //Una vez creado el enemigo lo insertamos en el diccionario
            enemies[type] = enemy
        }
        return enemy
    }
}
