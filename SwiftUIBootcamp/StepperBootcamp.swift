//
//  StepperBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Waseem Mohammad on 14/07/2023.
//

import SwiftUI

struct StepperBootcamp: View {
    
    @State var stepperValue: Int = 10
    @State var widthIncrament: CGFloat = 0
    
    var body: some View {
        VStack {
            Stepper("Stepper: \(stepperValue)", value:  $stepperValue)
                .padding(50)
            
            RoundedRectangle(cornerRadius: 25)
                .frame(width: 100 + widthIncrament, height: 100)
            
            Stepper("Stepper 2") {
                // increment
                incrementWidth(amount: 10)
            } onDecrement: {
                // decrament
                incrementWidth(amount: -10)
            }

        }
    }
    
    func incrementWidth(amount: CGFloat ) {
        withAnimation(.easeInOut) {
            widthIncrament += amount
        }
    }
}

struct StepperBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StepperBootcamp()
    }
}
