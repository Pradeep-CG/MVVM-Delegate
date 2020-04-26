//
//  LoginValidation.swift
//  MVVM_Delegate
//
//  Created by Pradeep on 26/04/20.
//  Copyright © 2020 Pradeep. All rights reserved.
//

import Foundation

struct LoginValidation {
    
    func validate(loginRequest:LoginRequest) -> ValidationResult {
        
        if loginRequest.userEmail!.isEmpty {
            
            return ValidationResult(success: false, error: "User email is empty")
        }
        if loginRequest.userPassword!.isEmpty {
            return ValidationResult(success: false, error: "Password is empty")
        }
        return ValidationResult(success: true, error: nil)
    }

}
