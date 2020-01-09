//
//  CalculatorButton.swift
//  SwiftUI_Calculator
//
//  Created by PST on 2020/01/09.
//  Copyright © 2020 PST. All rights reserved.
//

import SwiftUI

enum CalculatorButton: String {
    
    case zero, one, two, three, four, five, six, seven, eight, nine
    case equals, plus, minus, multiply, divide
    case decimal
    case ac, plusminus, percent
    
    var title: String {
        switch self {
            case .zero: return "0"
            case .one: return "1"
            case .two: return "2"
            case .three: return "3"
            case .four: return "4"
            case .five: return "5"
            case .six: return "6"
            case .seven: return "7"
            case .eight: return "8"
            case .nine: return "9"
            case .equals: return "="
            case .plus: return "+"
            case .plusminus: return "+-"
            case .minus: return "-"
            case .multiply: return "X"
            case .divide: return "/"
            case .percent: return "%"
            case .decimal: return "."
            default: return "AC"
        }
    }
    
    var backgroundColor: Color {
        switch self {
        case .zero, .one, .two, .three, .four, .five, .six, .seven, .eight, .nine, .decimal:
                return Color(.darkGray)
            case .ac, .plusminus, .percent:
                return Color(.lightGray)
            default:
                return Color(.orange)
        }
    }
}
