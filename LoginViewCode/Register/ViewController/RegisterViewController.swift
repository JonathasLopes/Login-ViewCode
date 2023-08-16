//
//  RegisterViewController.swift
//  LoginViewCode
//
//  Created by Jonathas Lopes on 01/08/23.
//

import UIKit

class RegisterViewController: UIViewController {

    var registerScreen:RegisterScreen?
    
    override func loadView() {
        self.registerScreen = RegisterScreen()
        self.view = self.registerScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
