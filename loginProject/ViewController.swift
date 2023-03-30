//
//  ViewController.swift
//  loginProject
//
//  Created by ISSC_412_2023 on 28/03/23.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var btnLogin: NSButton!
    @IBOutlet weak var btnCrearCuenta: NSButton!
    
    @IBAction func login(_ sender: NSButton) {
        login=true;
        self.view.window?.close()
    }
    @IBAction func crearCuenta(_ sender: NSButton) {
        crearCuenta = true;
        self.view.window?.close()
    }
    
    var crearCuenta:Bool = false;
    var login:Bool = false;
    
    override func viewDidAppear(){

            super.viewDidAppear()
            self.view.window?.title="MENU"
            
        }

        override func viewDidDisappear() {
            
            if(crearCuenta){
                
                performSegue(withIdentifier: "crearCuenta", sender: self)
            }
            else if (login){
                performSegue(withIdentifier: "login", sender: self)
            }
       
           
        
       }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    
    

}

