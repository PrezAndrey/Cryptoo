//
//  UIApplication.swift
//  Cryptoo
//
//  Created by Андрей  on 06.05.2023.
//

import Foundation
import SwiftUI

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
