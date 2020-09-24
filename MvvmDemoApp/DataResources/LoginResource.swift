//
//  LoginResponse.swift
//  MVVMArchitecture
//
//  Created by niraj paul on 01/02/20.
//  Copyright © 2020 administrator. All rights reserved.
//

import Foundation

struct JsonResponseParse
{
    func loginUser(loginRequest: LoginRequest, completion : @escaping (_ result: LoginResponse?) -> Void)
    { 
        let loginUrl = URL(string: ApiEndpoints.login)!
        let httpUtility = HttpUtility()
        do {
            let loginPostBody = try JSONEncoder().encode(loginRequest)
            httpUtility.postApiData(requestUrl: loginUrl, requestBody: loginPostBody, resultType: LoginResponse.self) { (loginApiResponse) in

                _ = completion(loginApiResponse)
            }
        }
        catch let error {
            debugPrint(error)
        }
    }
    func forgotPassword(loginRequest: ForgotPasswordRequest, completion : @escaping (_ result: ForgotPasswordResponse?) -> Void)
      {
          // Forgot Password
      }
    func userRegistration(loginRequest: RegistrationRequest, completion : @escaping (_ result: RegistrationRequest?) -> Void)
        {
            // Registration Place
        }
}
