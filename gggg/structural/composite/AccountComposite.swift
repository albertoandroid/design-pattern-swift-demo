//
//  AccountComposite.swift
//  gggg
//
//  Created by Alberto Palomar Robledo on 21/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation
/*
 Almacena Elementos Hijos Leaf. Tambien implementa el protocolo componente base
 y define la relación entre los opbjetos hijos relacionados.
 */
class AccountComposite: AccountComponent {
    var accountBalance: Float = 0.0
    
    var childAccounts = [AccountComponent]()
    
    //var childAccount: MutableList<AccountComponent> = ArrayList()
    
    func showCardName() {
        //for(child in childAccount){
        for child in childAccounts{
            child.showCardName()
        }
    }
    
    func addAccount(account: AccountComponent){
        childAccounts.append(account)
    }
    
    func removeAccount(account: AccountComponent){
        if let idx = childAccounts.firstIndex(where: { $0 as AnyObject === account as AnyObject }) {
            childAccounts.remove(at: idx)
        }
    }
}
