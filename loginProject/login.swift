//
//  login.swift
//  loginProject
//
//  Created by Saul Ivàn Campos Solìs on 29/03/23.
//

import Cocoa

class login: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    @IBOutlet weak var usernameText: NSTextField!
    @IBOutlet weak var passwordText: NSTextField!
    let crearCuenta = CrearCuenta()
    
    
    @IBAction func loginClicked(_ sender: Any) {
        
        if (crearCuenta.login(username: usernameText.stringValue, password: passwordText.stringValue) == true){
            usernameText.stringValue = "CORRECTO"
        }
        else{
            usernameText.stringValue = "INCORRECTO"
        }
    }
    //e
}
