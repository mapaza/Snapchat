//
//  ViewController.swift
//  Snapchat
//
//  Created by Mariam Apaza on 5/26/21.
//  Copyright © 2021 Mariam Apaza. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class iniciarSesionViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func iniciarSesionTapped(_ sender: Any) {
        Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!){(user,error) in
            print("Intentando iniciar sesion")
            if error != nil{
                print("Se presento el siguiente error: \(error) ")
            }else{
                print("Inicio de sesion Exitoso")
            }
            
        }
    
    }
    
}

