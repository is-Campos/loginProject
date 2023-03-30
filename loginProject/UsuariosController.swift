//
//  UsuariosController.swift
//  loginProject
//
//  Created by ISSC_412_2023 on 29/03/23.
//

import Foundation

func login(usuario : Usuario) -> Bool {
    for _ in usuarios {
        if (self.username == username && self.password == password) {
            return true
        }
    }
    return false
}

func registrarUsuario(usuario : Usuario) {
    usuarios.append(usuario)
}
