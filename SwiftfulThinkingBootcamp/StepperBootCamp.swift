//
//  StepperBootCamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Martin Kaeser on 02.04.23.
//

import SwiftUI

struct StepperBootCamp: View {
    @State var StepperValue: Int = 10
    @State var widthIncrement: CGFloat = 0
    var body: some View {
        VStack {
            Stepper("Stepper: \(StepperValue)", value: $StepperValue)
            Stepper {
               Text("Stepper 2")
                RoundedRectangle(cornerRadius: 25)
                    .frame(width: 100 + widthIncrement, height: 100)
            } onIncrement: {
                incrementWidth(amount: 10)
                //increment
            } onDecrement: {
                //decrement
                incrementWidth(amount: -10)            }
        }
        .padding()
    }
    func incrementWidth(amount: CGFloat) {
        withAnimation(.spring()) {
            widthIncrement += amount
        }
    }
}

struct StepperBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        StepperBootCamp()
    }
}
