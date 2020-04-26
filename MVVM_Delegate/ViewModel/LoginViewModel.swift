//
//  LoginViewModel.swift
//  MVVM_Delegate
//
//  Created by Pradeep on 26/04/20.
//  Copyright © 2020 Pradeep. All rights reserved.
//

import Foundation

protocol LoginViewModelDelegate {
    func didReceiveLoginResponse(loginResponse:LoginResponse?)
}
struct LoginViewModel {
    
    var delegate:LoginViewModelDelegate?
    
    func loginUser(loginRequest:LoginRequest)  {
        
        let validationResult = LoginValidation().validate(loginRequest: loginRequest)
        
        if validationResult.success{
            // use login resource to call login api
            let loginResource = LoginResource()
            loginResource.loginUser(loginRequest: loginRequest) { (loginApiResponse) in
                
                DispatchQueue.main.async {
                    self.delegate?.didReceiveLoginResponse(loginResponse: loginApiResponse)
                }
            }
            
        }
        self.delegate?.didReceiveLoginResponse(loginResponse: LoginResponse(errorMessage: validationResult.error, data: nil))
        
    }
}
