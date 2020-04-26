//
//  LoginResource.swift
//  MVVM_Delegate
//
//  Created by Pradeep on 26/04/20.
//  Copyright © 2020 Pradeep. All rights reserved.
//

import Foundation

struct LoginResource {
    
    func loginUser(loginRequest: LoginRequest, complition: @escaping  (_ result: LoginResponse?) -> Void) {
        
        let loginUrl = URL(string: ApiEndPoint.login)!
        let httpUtility = HttpUtility()
        
        do {
            let loginPostBody = try JSONEncoder().encode(loginRequest)
            
            httpUtility.postApiData(requestUrl: loginUrl, requestBody: loginPostBody, resultType: LoginResponse.self) { (loginApiResponse) in
                
                _ = complition(loginApiResponse)
            }
            
        } catch let error {
            debugPrint(error)
        }
        
    }
}
