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
        lblError.isHidden=true;
        lblExito.isHidden=true;
    }
    
    override func viewDidDisappear() {
        
        performSegue(withIdentifier: "regresarDesdeCrearCuenta", sender: self)
        
   }

    var nombreNuevoUsuario: String = "";
  
    var usernameNuevoUsuario : String = "";
    
    var passwordNuevoUsuario : String = "";
    
    var confirmPasswordNuevoUsuario: String = "";
    
    var codigoError : String = "1"
    
    @IBOutlet weak var nombre: NSTextField!
    @IBOutlet weak var username: NSTextField!
    
    @IBOutlet weak var txtPassword: NSSecureTextField!
    @IBOutlet weak var txtConfirmPassword: NSSecureTextField!
    
    @IBOutlet weak var lblError: NSTextField!
    @IBOutlet weak var lblExito: NSTextField!
    
    @IBAction func regresar(_ sender: NSButton) {
        dismiss(self);
    }
    
    @IBAction func crearCuentaClicked(_ sender: NSButton) {
        
        nombreNuevoUsuario = nombre.stringValue;
        
        usernameNuevoUsuario = username.stringValue;
        
        passwordNuevoUsuario = txtPassword.stringValue;
        
        confirmPasswordNuevoUsuario = txtConfirmPassword.stringValue;
        
        if(
            validarCampos(nombre:nombreNuevoUsuario, username:usernameNuevoUsuario, password:passwordNuevoUsuario, confirmPassword: confirmPasswordNuevoUsuario)){
            
            
            let nuevoUsuario = Usuario(nombre: nombreNuevoUsuario, username: usernameNuevoUsuario, password: passwordNuevoUsuario)
            
            registrarUsuario(usuario: nuevoUsuario)
            
            lblError.isHidden=true;
            lblExito.isHidden=false;
            
        }
        else{
            mostrarError();
        }
        
       
    }
    
    func validarCampos(nombre: String, username:String, password:String, confirmPassword:String) -> Bool {
        
        if (password != confirmPassword){
           
            codigoError="1"
            return false
        }
        
        for user in usuarios {
           
            if (user.username == username) {
                codigoError="2"
                return false
            }
        }
        
        if(nombre != "" && username != "" && password != "" && confirmPassword != ""){
           
            return true
        }
        else{
            codigoError="3";
            return false;
        }
        
    }
    
    func mostrarError(){
        
        lblExito.isHidden=true;
        
        switch(codigoError){
        case "1":  lblError.stringValue="Las contraseñas no coinciden";
            break;
            
        case "2":  lblError.stringValue="Nombre de usuario ya registrado";
            break;
            
        case "3": lblError.stringValue="Todos los campos deben llenarse";
            break;
            
        default: lblError.stringValue="Error al crear cuenta";
            break;
        }
        
        lblError.isHidden=false;
    }
    
}
