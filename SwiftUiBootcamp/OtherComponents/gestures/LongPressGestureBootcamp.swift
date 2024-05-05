//
//  LongPressGestureBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Meezu Lawot on 03/09/2023.
//

import SwiftUI

struct LongPressGestureBootcamp: View {
    
    @State var isComplete: Bool = false
    
    var body: some View {
        Text(isComplete ? "Completed" : "Not Complete")
            .padding()
            .padding(.horizontal)
            .background(isComplete ? Color.green: Color.gray)
            .cornerRadius(10)
//            .onTapGesture {
//                isComplete.toggle()
//            }
            .onLongPressGesture(minimumDuration: 1.0, maximumDistance: 100, perform: {
                isComplete.toggle()
            })
    }
}

struct LongPressGestureBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        LongPressGestureBootcamp()
    }
}
