//
//  LoginExtension.swift
//  MVVM_Delegate
//
//  Created by Pradeep on 26/04/20.
//  Copyright © 2020 Pradeep. All rights reserved.
//

import Foundation
import UIKit

extension ViewController: LoginViewModelDelegate{
    
    func didReceiveLoginResponse(loginResponse: LoginResponse?) {
        //
        
        if(loginResponse?.errorMessage == nil && loginResponse?.data != nil)
        {
            debugPrint("navigate to different view controller")
            
        }
            if(loginResponse?.errorMessage == nil && loginResponse?.data == nil)
            {
                debugPrint("some error occured")
                
            }
        else if (loginResponse?.errorMessage != nil)
        {
            let alert = UIAlertController(title: Constants.ErrorAlertTitle, message: loginResponse?.errorMessage, preferredStyle: .alert)

            alert.addAction(UIAlertAction(title: Constants.OkAlertTitle, style: .default, handler: nil))

            self.present(alert, animated: true)
        }
    }
}
