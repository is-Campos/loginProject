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
    
    class User {
        
        
        init (nombre:String, username:String, password:String) {
            self.username =
            self.password = password
        }
    }
    
    class LoginController {
        var users = [User]()
        
        func addUser(user: User) {
            users.append(user)
        }
        
        func login(username: String, password:String) -> Bool {
            for user in users {
                if (user.username == username && user.password == password) {
                    return true
                }
            }
            return false
        }
    }
    
}
