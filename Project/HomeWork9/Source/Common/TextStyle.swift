//
//  TextStyle.swift
//  HomeWork9
//

//

import UIKit

protocol TextStyleProtocol {
    
    // add a function to the protocol to be able to display the text color of the appropriate type
    // instead of the default implementation
    func textColor(for type: TextType) -> UIColor
}

extension TextStyleProtocol {
    
    func textColor(for type: TextType) -> UIColor {
        return .green
    }
}

class TextStyle : TextStyleProtocol {
    
    func textColor(for type: TextType) -> UIColor {
        
        switch type {
        case .regular:
            return .black
        case .error:
            return .red
        case .none:
            return .clear
        }
    }
}
