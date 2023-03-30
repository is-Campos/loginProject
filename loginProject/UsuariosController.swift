//
//  UsuariosController.swift
//  loginProject
//
//  Created by ISSC_412_2023 on 29/03/23.
//

import Foundation

var usuarios = [Usuario]()

func login(username: String, password: String) -> Any {
    for user in usuarios {
        if (user.username == username && user.password == password) {
            return user
        }
    }
    return false
}

func registrarUsuario(usuario : Usuario) {
    usuarios.append(usuario)
    print(usuarios.count)
}


