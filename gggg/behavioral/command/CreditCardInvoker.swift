//
//  CreditCardInvoker.swift
//  gggg
//
//  Created by Alberto Palomar Robledo on 16/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation
/*
Necesitmaos nuestro Invoker, es decir la clase que simplemente llame al metodo Execute
 */
class CreditCardInvoker {
    
    private var command: Command?
    
    //hacemos un setcomand en runtime.
    func setCommand(command: Command){
        self.command = command
    }
    
    //El metodo run nos lanzara el comando que queremos invocar, por
    //ejemplo activar o desactivar la tarjeta de creidto.
    
    func run(){
        command?.execute()
    }
}
