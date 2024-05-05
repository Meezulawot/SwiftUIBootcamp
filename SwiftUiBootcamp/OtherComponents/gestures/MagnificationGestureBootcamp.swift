//
//  MagnificationGestureBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Meezu Lawot on 10/09/2023.
//

import SwiftUI

struct MagnificationGestureBootcamp: View {
    
    @State var currentAmount: CGFloat = 0.0
    @State var lastAmount: CGFloat = 0.0
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .font(.title)
            .padding(40)
            .background(Color.green.cornerRadius(10))
            .scaleEffect(1 + currentAmount + lastAmount)
            .gesture(
                MagnificationGesture()
                    .onChanged{ value in
                        currentAmount = value - 1
                    }
                    .onEnded{ value in
                        lastAmount += currentAmount
                        currentAmount = 0
                    }
            )
    }
}

struct MagnificationGestureBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        MagnificationGestureBootcamp()
    }
}
