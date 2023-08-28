//
//  SliderBootcamp.swift
//  SwiftUiBootcamp


import SwiftUI

struct SliderBootcamp: View {
    
    @State var sliderValue: Double = 2
    @State var color: Color = .red
    
    var body: some View {
        
        
        VStack {
            
            Text("Rating:")
            Text(String(format: "%.0f", sliderValue))
                .foregroundColor(color)
            
//            Slider(value: $sliderValue)
//                .accentColor(.blue)
            
//            Slider(value: $sliderValue, in: 0...100) //for any range of value
//            Slider(value: $sliderValue, in: 0...5, step: 1.0) // for stepping the range of value
            
            Slider(value: $sliderValue,
                   in: 1...5,
                   step: 1,
                   onEditingChanged: {_ in
                color = .green
            },
                   minimumValueLabel: Text("1"),
                   maximumValueLabel: Text("5"),
                   label: {
                
                Text("Title")
            }
            )
            .accentColor(.blue)
            .padding(20)
        }
    }
}

struct SliderBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SliderBootcamp()
    }
}
