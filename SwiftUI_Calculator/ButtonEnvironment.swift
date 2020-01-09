//
//  ButtonEnvironment.swift
//  SwiftUI_Calculator
//
//  Created by PST on 2020/01/09.
//  Copyright © 2020 PST. All rights reserved.
//

import SwiftUI

class ButtonEnvironment: ObservableObject {
    
    @Published var display = ""
    
    func receiveInput(calculatorButton: CalculatorButton) {
        self.display = calculatorButton.title
    }
}
