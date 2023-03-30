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
        lblIncorrecto.isHidden=true;
        // Do view setup here.
    }
    override func viewDidAppear(){

            super.viewDidAppear()
            self.view.window?.title="Iniciar Sesión"
            
        }

    override func viewDidDisappear() {
        
        if(!loginCorrecto){
            performSegue(withIdentifier: "regresarDesdeLogin", sender: self)
        }
        
   }
    
    var resultadoLogin: Any? = nil;
    var loginCorrecto:Bool = false;
    
    
    
    @IBOutlet weak var btnRegresar: NSButton!
    @IBOutlet weak var lblIncorrecto: NSTextField!
    @IBOutlet weak var usuarioText: NSTextField!
    @IBOutlet weak var txtPassword: NSSecureTextField!
    
    
    @IBAction func regresar(_ sender: NSButton) {
        dismiss(self)
    }
    
    @IBAction func loginClicked(_ sender: NSButton) {
        resultadoLogin = login(username: usuarioText.stringValue, password: txtPassword.stringValue)
        
        if(resultadoLogin is Usuario){
            loginCorrecto=true;
            performSegue(withIdentifier: "iniciarSesionCorrecto", sender: self)
        }
        else{
            lblIncorrecto.isHidden = false;
        }
    }
    
    
    override func prepare(for segue: NSStoryboardSegue, sender: Any?) {
           
          self.view.window?.close()
           
           if segue.identifier == "iniciarSesionCorrecto" {
               
               let destinoVC=segue.destinationController as! PaginaUsuario
               
               destinoVC.usuarioActual = resultadoLogin as? Usuario;
               
           }
       }
    
    
}
