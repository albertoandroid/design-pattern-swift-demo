//
//  ProxyInternet.swift
//  gggg
//
//  Created by Alberto Palomar Robledo on 23/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation
/*
 Proxy: Oculta el objeto real extendiendolo y los clientes se comunican con el
 objeto real a través de este objeto proxy.
 */
class ProxyInternet: Internet {
    
    var internet = AccessToInternet()
    var bannedUrl = [String]()
    init() {
        bannedUrl.append("twitter.com")
        bannedUrl.append("google.com")
        bannedUrl.append("facebook.com")
    }
    
    func connectTo(url: String) {
        if(bannedUrl.contains(url)){
            print("Intentando conectar \(url)")
            print("URL bloqueada - Acceso Denegado - Consulta a tu Administrador")
        }else{
            internet.connectTo(url: url)
        }
        
    }
    
}
