//
//  ColorPickerBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Meezu Lawot on 22/08/2023.
//

import SwiftUI

struct ColorPickerBootcamp: View {
    
    @State var backgroundColor: Color = Color.green
    
    var body: some View {
        ZStack{
            
            backgroundColor
                .ignoresSafeArea(.all)
            
            ColorPicker("Select a color",
                        selection: $backgroundColor,
                        supportsOpacity: true)
            .padding()
            .background(Color.black)
            .foregroundColor(.white)
            .padding()
           
        }
    }
}

struct ColorPickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerBootcamp()
    }
}
