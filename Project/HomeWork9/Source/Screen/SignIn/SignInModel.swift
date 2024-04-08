//
//  SignInModel.swift
//  HomeWork9
//

//

import Foundation

class SignInModel {
    
    weak var delegate: SignInModelDelegate?
    
    let emailValidator = EmailValidator()
    let passwordValidator = PasswordValidator()
    
    var emailValid: Bool = false
    var passwordValid: Bool = false
    
    // create functions to change the passwordValid and emailValid values to "true" or "false"
    // so that the condition in the guard worked and we could get the "signInButtonDidTap" button actoin result
    // when we add all info right
    
    // change the passwordValid value func
    func changePasswordValidValue(with value: String?) {
        if value == nil {
            passwordValid = true
        } else {
            passwordValid = false
        }
    }
    
    // change the emailValid value func
    func changeEmailValidValue(with value: String?) {
        if value == nil {
            emailValid = true
        } else {
            emailValid = false
        }
    }
    
    var email: String = "" {
        didSet {
            
            // Get the result of validate func from EmailValidator
            let emailErrorText = emailValidator.validate(text: email)
            
            // Set the result through a delegate
            delegate?.didValidate(errorText: emailErrorText, textType: .error)
            
            // change the emailValid value to "true" or "false"
            changeEmailValidValue(with: emailErrorText)
        }
    }
    
    var password: String = "" {
        didSet {
            
            // Get the result of validate func from PasswordValidator
            let passwordErrorText = passwordValidator.validate(text: password)
            
            // Set the result through a delegate
            delegate?.didValidate(errorText: passwordErrorText, textType: .error)
            
            // change the passwordValid value to "true" or "false"
            changePasswordValidValue(with: passwordErrorText)
        }
    }
}
