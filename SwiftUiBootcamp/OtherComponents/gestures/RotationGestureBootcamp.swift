//
//  RotationGestureBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Meezu Lawot on 10/09/2023.
//

import SwiftUI

struct RotationGestureBootcamp: View {
    
    @State var angle: Angle = Angle(degrees: 0)
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .font(.title)
            .foregroundColor(.white)
            .padding(40)
            .background(Color.blue.cornerRadius(10))
            .rotationEffect(angle)
            .gesture(
                RotationGesture()
                    .onChanged{ value in
                        angle = value
                    }
                    .onEnded{ value in
                        withAnimation(.spring()){
                            angle = Angle(degrees: 0)
                        }
                    }
            )
        
    }
}

struct RotationGestureBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        RotationGestureBootcamp()
    }
}
