//
//  ViewController.swift
//  MVVM_Delegate
//
//  Created by Pradeep on 06/04/20.
//  Copyright © 2020 Pradeep. All rights reserved.
//
//user name: codecat15@gmail.com
//password: 1234


import UIKit
import Foundation

class ViewController: UIViewController {
    
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var password: UITextField!
    private var loginViewModel = LoginViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        loginViewModel.delegate = self
    }

    @IBAction func didTapOnLoginButton(_ sender: Any) {
        
        let request = LoginRequest(userEmail: userName.text, userPassword: password.text)
        loginViewModel.loginUser(loginRequest: request)
    }
    
    
}

