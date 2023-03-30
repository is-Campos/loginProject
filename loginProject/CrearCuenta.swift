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
    
    override func viewDidDisappear() {
        
        performSegue(withIdentifier: "regresarDesdeCrearCuenta", sender: self)
        
   }

    
    @IBOutlet weak var nombre: NSTextField!
    @IBOutlet weak var username: NSTextField!
    @IBOutlet weak var password: NSTextField!
    @IBOutlet weak var confirmPassword: NSTextField!
    
    
    @IBAction func crearCuentaClicked(_ sender: NSButton) {
        let nuevoUsuario = Usuario(nombre: nombre.stringValue, username: username.stringValue, password: password.stringValue)
        
        registrarUsuario(usuario: nuevoUsuario)
    }
    
}
