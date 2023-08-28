//
//  StepperBootcamp.swift
//  SwiftUiBootcamp
//
//

import SwiftUI

struct StepperBootcamp: View {
    
    @State var stepperValue: Int = 10
    @State var widthIncrement: CGFloat = 0
    
    var body: some View {
//        Stepper("Stepper: \(stepperValue) ", value: $stepperValue)
//            .padding(50)
        
        VStack {
            RoundedRectangle(cornerRadius: 10.0)
                .frame(width: 100 + widthIncrement , height: 100)
            
            Stepper("Stepper 2: ", onIncrement: {
                incrementWidth(amount: 10)
            }, onDecrement: {
                incrementWidth(amount: -10)
            })
            .padding(50)
        }
        
        
    }
    
    
    
    func incrementWidth(amount: CGFloat){
        
        withAnimation(.easeInOut){
            widthIncrement += amount
        }
        
    }
}

struct StepperBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StepperBootcamp()
    }
}
