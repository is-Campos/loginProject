//
//  PaginaUsuario.swift
//  loginProject
//
//  Created by Diego Juárez on 29/03/23.
//

import Cocoa

class PaginaUsuario: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        lblUsuario.stringValue="BIENVENIDO A BEFAKE  " + usuarioActual!.nombre;
        // Do view setup here.
    }
    
    override func viewDidDisappear() {
        
       
            performSegue(withIdentifier: "regresarDesdePaginaUsuario", sender: self)
        
        
   }
    
    var usuarioActual : Usuario? = nil;
    
    @IBOutlet weak var btnRegresar: NSButton!
    @IBOutlet weak var lblUsuario: NSTextField!
    
    @IBAction func regresar(_ sender: NSButton) {
        dismiss(self);
    }
    
}
