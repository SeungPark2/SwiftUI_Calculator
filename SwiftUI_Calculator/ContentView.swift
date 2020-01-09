//
//  ContentView.swift
//  SwiftUI_Calculator
//
//  Created by PST on 2020/01/05.
//  Copyright © 2020 PST. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var env: ButtonEnvironment
    
    let buttons : [[CalculatorButton]] = [
        [.ac, .plusminus, .percent, .divide],
        [.seven, .eight, .nine, .multiply],
        [.four, .five, .six, .minus],
        [.one, .two, .three, .plus],
        [.zero, .decimal, .equals]
    ]
    
    var body: some View {
       
        ZStack(alignment: .bottom) {
            Color.black.edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 12) {
                HStack {
                    Spacer()
                    Text(env.display)
                        .foregroundColor(.white)
                        .font(.system(size: 64))
                }.padding()
                
                ForEach(buttons, id: \.self) { row in
                    HStack(spacing: 12) {
                        ForEach(row, id: \.self) {button in
                            CalculatorButtonView(button: button)
                        }//ForEach
                    }//Hstack
                }//ForEach
            }.padding(.bottom)//VStack
        }//ZStack
    }//View
}

struct CalculatorButtonView: View {

    var button: CalculatorButton
    @EnvironmentObject var env: ButtonEnvironment
    
    var body: some View {
        Button(action: {
            self.env.receiveInput(calculatorButton: self.button)
        }) {
            Text(button.title)
            .font(.system(size: 32))
            .frame(width: self.buttonWidth(button: button), height: (UIScreen.main.bounds.width - 5 * 12) / 4)
            .foregroundColor(.white)
            .background(button.backgroundColor)
                .cornerRadius(self.buttonWidth(button: button))
        }
    }
    
    func buttonWidth(button: CalculatorButton) -> CGFloat {
           if button == .zero {
               return (UIScreen.main.bounds.width - 4 * 12) / 4 * 2
           }
           return (UIScreen.main.bounds.width - 5 * 12) / 4
       }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ButtonEnvironment())
    }
}
