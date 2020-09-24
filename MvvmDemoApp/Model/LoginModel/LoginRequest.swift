//
//  Login.swift
//  MVVMArchitecture
//
//  Created by niraj paul on 01/02/20.
//  Copyright © 2020 administrator. All rights reserved.
//
import Foundation

struct LoginRequest : Encodable
{
    var userEmail, userPassword: String?
}



struct RegistrationRequest : Encodable
{
    var userEmail, userPassword: String?
}
struct ForgotPasswordRequest : Encodable
{
    var userEmail, userPassword: String?
}
