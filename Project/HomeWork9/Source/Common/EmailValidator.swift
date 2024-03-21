//
//  EmailValidator.swift
//  HomeWork9
//
//  Created by Алина Власенко on 21.03.2024.
//

import Foundation

class EmailValidator: TextValidator {
    
    // create the singleton to set the value from the "validate" func to the "email" variable in SignInModel
    static let shared = EmailValidator()
    
    // to avoid the possibility of creating another instance besides shared
    private override init() {}
    
    override func validate(text: String) -> String? {
        
        // use the logic of the parent class
        let basicEmailValidation = super.validate(text: text)
        
        if (basicEmailValidation != nil) {
            return basicEmailValidation
        }
        
        // modify the logic, add new restrictions
        if text.count > 30 {
            return "Кількість символів має бути менше 30"
        }
        
        return nil
    }
}
