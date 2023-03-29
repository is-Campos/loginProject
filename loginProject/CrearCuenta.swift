//
//  CrearCuenta.swift
//  loginProject
//
//  Created by ISSC_412_2023 on 28/03/23.
//

import Cocoa

class CrearCuenta: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBOutlet weak var nombre: NSTextField!
    @IBOutlet weak var username: NSTextField!
    @IBOutlet weak var password: NSTextField!
    @IBOutlet weak var confirmPassword: NSTextField!
    @IBOutlet weak var deb: NSTextField!
    var usuarios = [Usuario]()
    
    
    func registrarUsuario(usuario : Usuario) {
        usuarios.append(usuario)
    }
    
    @IBAction func crearCuentaClicked(_ sender: Any) {
        
        let nuevoUsuario = Usuario(nombre: nombre.stringValue, username: username.stringValue, password: password.stringValue)
        
        registrarUsuario(usuario: nuevoUsuario)
        
        deb.stringValue = usuarios[0].password
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
