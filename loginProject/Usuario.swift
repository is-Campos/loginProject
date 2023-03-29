//
//  Usuario.swift
//  loginProject
//
//  Created by Saul Ivàn Campos Solìs on 28/03/23.
//

class Usuario {
    var nombre :String
    var username : String
    var password : String
    var usuarios = [Usuario]()
    
    init (nombre: String, username:String, password:String) {
        self.nombre = nombre
        self.username = username
        self.password = password
    }
    
    func registrarUsuario(usuario : Usuario) {
        usuarios.append(usuario)
        print(usuarios.count)
    }
    
    func login(username: String, password:String) -> Bool {
        for user in usuarios {
            if (user.username == username && user.password == password) {
                return true
            }
        }
        return false
    }
}
