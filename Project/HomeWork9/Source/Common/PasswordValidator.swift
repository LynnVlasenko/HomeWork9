//
//  PasswordValidator.swift
//  HomeWork9
//
//  Created by Алина Власенко on 21.03.2024.
//

import Foundation

class PasswordValidator: TextValidator {
    
    override func validate(text: String) -> String? {
        
        // use the logic of the parent class
        let basicPasswordValidation = super.validate(text: text)
        
        if (basicPasswordValidation != nil) {
            return basicPasswordValidation
        }
        
        // modify the logic, add new restrictions
        if text.count > 16 {
            return "Кількість символів має бути менше 16"
        }
        
        return nil
    }
}
