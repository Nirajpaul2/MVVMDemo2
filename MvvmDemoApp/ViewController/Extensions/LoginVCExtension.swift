//
//  LoginVCExtension.swift
//  MVVMArchitecture
//
//  Created by niraj paul on 01/02/20.
//  Copyright © 2020 administrator. All rights reserved.
//
import Foundation
import UIKit

extension LoginViewController : LoginViewModelDelegate
{
    func didReceiveLoginResponse(loginResponse: LoginResponse?){

        if(loginResponse?.errorMessage == nil && loginResponse?.data != nil)
        {
            debugPrint("navigate to different view controller")
        }
        else if (loginResponse?.errorMessage != nil)
        {
            let alert = UIAlertController(title: Constants.ErrorAlertTitle, message: loginResponse?.errorMessage, preferredStyle: .alert)

            alert.addAction(UIAlertAction(title: Constants.OkAlertTitle, style: .default, handler: nil))

            self.present(alert, animated: true)
        }
    }
}

