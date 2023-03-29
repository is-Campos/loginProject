//
//  Usuario.swift
//  loginProject
//
//  Created by Saul Ivàn Campos Solìs on 28/03/23.
//

import Cocoa

class Usuario {
    var nombre :String
    var username : String
    var password : String
    
    init (nombre: String, username:String, password:String) {
        self.nombre = nombre
        self.username = username
        self.password = password
    }
}
