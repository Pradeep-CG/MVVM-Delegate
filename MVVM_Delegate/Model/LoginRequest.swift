//
//  LoginRequest.swift
//  MVVM_Delegate
//
//  Created by Pradeep on 26/04/20.
//  Copyright © 2020 Pradeep. All rights reserved.
//

import Foundation

struct LoginRequest : Encodable
{
    var userEmail, userPassword: String?
}
