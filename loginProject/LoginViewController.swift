//
//  LoginViewController.swift
//  loginProject
//
//  Created by ISSC_412_2023 on 29/03/23.
//

import Cocoa

class LoginViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    override func viewDidDisappear() {
        
        performSegue(withIdentifier: "regresarDesdeLogin", sender: self)
        
   }

    
    @IBOutlet weak var usuarioText: NSTextField!
    @IBOutlet weak var passwordText: NSTextField!
    
    
    @IBAction func loginClicked(_ sender: NSButton) {
        let loginUsuario = Usuario.init(nombre: "login" , username: usuarioText.stringValue, password: passwordText.stringValue)
        let loginResult = loginUsuario.login()
        print(loginResult)
    }
    
    
}
